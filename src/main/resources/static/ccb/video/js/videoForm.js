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

// 保存
    function saveVideo() {
        let videoId = $("#id").attr("value");
        let formData = $("#videoForm").serializeObject();
        formData.id = videoId;
        formData.url = $("#url").attr("src");
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
        language: "zn",
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
        $("#id").attr("value", "");
        $("#videoTitle").attr("value", "");
        $("#description").text("");
        $("#url").attr("src", '');
        teachers.setValue([]);
    }

// 讲师照片上传
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

});

