layui.use(['table', 'form', 'upload', 'layer', 'element'], function() {
    var form = layui.form
        , upload = layui.upload
        , layer = layui.layer;

    // 自定义验证规则
    form.verify({
        content: function(value){
            if(value.trim() == ''){
                return '内容不能为空';
            }
        }
        , video: [ /(^$)|(^#)|(^http(s*):\/\/[^\s]+\.[^\s]+)/, "图片格式不正确" ]
    });

    form.on('submit(commit)', function (data) {
        saveVideo();
        return false;
    });

    $("#resetBtn").click(function() {
        resetForm();
    });

    $("#videoDetail").click(function () {
        var videoUrl = $("#url").attr("src");
        if (videoUrl.trim() === '') {
            layer.msg("请先上传视频");
            return;
        }
        // 查看视频
        var videoElem =
            '<video width="100%" height="100%" controls autobuffer autoplay="autoplay" loop="loop">' +
            '<source src="' + $("#url").attr("src") + '" type="video/mp4"/>' +
            '</video>'
        layer.open({
            type: 1,
            area: ['960px', '600px'],
            title: '播放视频',
            content: videoElem,
            shadeClose: false
        });
    });

    $("#showTextPage").click(function() {
        var textPageUrl = $("#iImage").attr("src");
        if (textPageUrl.trim() == '') {
            layer.msg("请先上传文稿");
            return;
        }
        // 查看文稿
        var textPageElem =
            '<div style="width: 960px; height: 720px; display: table-cell; vertical-align: middle">' +
            '<img src="' + textPageUrl + '" style="max-width: 100%; display: block; margin: auto" />' +
            '</div>';
        layer.open({
            type: 1,
            shade: 0.8,
            offset: 'auto',
            title: false,
            area: ['80%', '80%'],
            content: textPageElem,
        });
    });

// 保存
    function saveVideo() {
        let videoId = $("#id").attr("value");
        let formData = $("#videoForm").serializeObject();
        formData.id = videoId;
        formData.url = $("#url").attr("src");
        formData.textPage = $("#iImage").attr("src");
        formData.isRecommend = $("#switchRecommend").is(':checked') == true ? 1 : 0;
        /* 能编辑的肯定没有被删除 */
        formData.status = 1;
        formData.channelId = $("#channelId option:selected").val();
        formData.teacherIds = teachers.getValue('value');
        console.log(JSON.stringify(formData));

        let postUrl;
        if (videoId == '') {
            postUrl = "/ccb/video/create";
        } else {
            postUrl = "/ccb/video/update";
        }

        $.ajax({
            url: postUrl,
            type: 'POST',
            data: JSON.stringify(formData),
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            async: false,
            success: function(data) {
                var index = parent.layer.getFrameIndex(window.name);
                if (data.code == '200') {
                    layer.msg(data.msg);
                    parent.layer.close(index);
                } else {
                    layer.msg(data.msg);
                }
            }
        });

    }

    // 讲师与视频关联，复选框
    var teachers = xmSelect.render({
        el: "#teacher",
        toolbar: {
            show: true
        },
        language: "zn",
        filterable: true,
        tips: "选择视频中的讲师",
        data: []
    });

    axios({
        method: 'get',
        url: '/ccb/video/teacherSelectList?id=' + $("#id").attr("value"),
    }).then(response => {
        var res = response.data;

        teachers.update({
            data: res.data,
            autoRow: true,
        })
    });

    function resetForm() {
        $("#channelId").val("");
        form.render('select');
        $("#videoTitle").attr("value", "");
        $("#description").text("");
        $("#url").attr("src", '');
        $("#uploadTextPage").attr("src", '');

        /* 默认关闭 */
        $("#switchRecommend").val("");
        $("#switchRecommend").removeAttr("checked");

        teachers.setValue([ ]);
    }

// 视频上传
    var uploadVideo = upload.render({
        elem: '#uploadVideo'
        , url: '/uploadFile/video' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
        , method: 'POST'
        // 限制格式
        , ext: 'mp4|mov|avi|flv|mpeg'
        , accept: 'video'
        , before: function (obj) {
            //预读本地文件示例，不支持ie8
            obj.preview(function (index, file, result) {
                $('#url').attr('src', result); //视频链接
            });
        }
        , done: function (res) {
            //如果上传失败
            if (res.code == '400') {
                return layer.msg('上传失败');
            }
            //上传成功的一些操作
            $('#url').attr('src', res.data.url);
            $('#videoText').html(''); //置空上传失败的状态
            layer.msg('上传成功');
        }
        , error: function () {
            //演示失败状态，并实现重传
            var videoText = $('#videoText');
            videoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
            videoText.find('.demo-reload').on('click', function () {
                uploadVideo.upload();
            });
        }
    });

    // 视频文稿上传
    var uploadTextPage = upload.render({
        elem: '#uploadTextPage'
        , url: '/uploadFile/image' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
        , method: 'POST'
        // 限制格式
        , ext: 'jpg|png|gif|bmp|jpeg'
        , before: function (obj) {
            //预读本地文件示例，不支持ie8
            obj.preview(function (index, file, result) {
                $('#iImage').attr('src', result); //图片链接（base64）
            });
        }
        , done: function (res) {
            //如果上传失败
            if (res.code == '400') {
                return layer.msg('上传失败');
            }
            //上传成功的一些操作
            $('#iImage').attr('src', res.data.url);
            $('#iconText').html(''); //置空上传失败的状态
            layer.msg('上传成功');
        }
        , error: function () {
            //演示失败状态，并实现重传
            var iconText = $('#iconText');
            iconText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
            iconText.find('.demo-reload').on('click', function () {
                uploadTextPage.upload();
            });
        }
    });


});

