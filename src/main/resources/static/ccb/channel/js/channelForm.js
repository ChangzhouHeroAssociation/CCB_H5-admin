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
        , image: [ /(^$)|(^#)|(^http(s*):\/\/[^\s]+\.[^\s]+)/, "图片格式不正确" ]
        , weight: function (value) {
            if (isNaN(value)) {
                return '请输入数字';
            }
            if (value < 0 || value > 100) {
                return "请输入0 - 100 的数字";
            }
        }
    });

    form.on('submit(commit)', function (data) {
        savechannel();
        return false;
    });

    $("#resetBtn").click(function() {
        resetForm();
    });

// 保存
    function savechannel() {
        let channelId = $("#id").attr("value");
        let isEnable = $("#switchEnable").is(':checked') == true ? 1 : 0;

        let formData = $("#channelForm").serializeObject();
        formData.id = channelId;
        formData.icon = $("#iImage").attr("src");
        // formData.image = $("#uImage").attr("src");
        formData.video = $("#url").attr("src");
        formData.weight = $("#weight").val();
        formData.cover = $('#picture').attr('src');
        formData.enabled = isEnable;
        /* 能编辑的肯定没有被删除 */
        formData.status = 1;

        console.log(JSON.stringify(formData));

        let postUrl;
        if (channelId == '') {
            postUrl = "/ccb/channel/create";
        } else {
            postUrl = "/ccb/channel/update";
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
    function resetForm() {
        // $("#id").attr("value", "");
        $("#channelName").attr("value", "");
        $("#content").text("");

        $("#iImage").attr("src", '');
        // $("#iImage").attr("src", '');
        $("#url").attr("src", '');
        $("#weight").attr("value", "");
        $('#picture').attr('src', '');

        /* 默认开启 */
        $("#switchEnable").val("");
        $("#switchEnable").removeAttr("checked");
        $("#switchEnable").attr("checked", "");
        // videosInChannel.setValue([ ]);

    }

// 频道图标上传
    var uploadIcon = upload.render({
        elem: '#uploadIconImage'
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
                uploadIcon.upload();
            });
        }
    });

    /* 视频上传 */
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

    // 视频封面上传
    var uploadCover = upload.render({
        elem: '#uploadPicture'
        , url: '/uploadFile/image' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
        , method: 'POST'
        // 限制格式
        , ext: 'jpg|png|gif|bmp|jpeg'
        , before: function (obj) {
            //预读本地文件示例，不支持ie8
            obj.preview(function (index, file, result) {
                $('#picture').attr('src', result); //图片链接（base64）
            });
        }
        , done: function (res) {
            //如果上传失败
            if (res.code == '400') {
                return layer.msg('上传失败');
            }
            //上传成功的一些操作
            $('#picture').attr('src', res.data.url);
            $('#pictureText').html(''); //置空上传失败的状态
            layer.msg('上传成功');
        }
        , error: function () {
            //演示失败状态，并实现重传
            var pictureText = $('#pictureText');
            pictureText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
            pictureText.find('.demo-reload').on('click', function () {
                uploadCover.upload();
            });
        }
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

    // 查看视频封面
    $("#showPicture").click(function() {
        var picture = $("#picture").attr("src");
        if (picture.trim() == '') {
            layer.msg("请先上传视频封面");
            return;
        }
        // 封面
        var pictureElem =
            '<div style="width: 100%; height: 100%; text-align: center;">' +
            '<img src="' + picture + '" style="max-height: 100%; margin: auto;" />' +
            '</div>';
        layer.open({
            type: 1,
            shade: 0.8,
            offset: 'auto',
            title: '视频封面',
            area: ['80%', '80%'],
            content: pictureElem,
        });
    });

});

