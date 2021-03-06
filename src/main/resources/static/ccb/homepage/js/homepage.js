layui.use(['table', 'form', 'upload', 'layer', 'element'], function() {
    var form = layui.form
        , upload = layui.upload
        , layer = layui.layer
        , element = layui.element;

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
        saveHomepage();
        return false;
    });

    $("#resetBtn").click(function() {
        resetForm();
    });

    $("#videoDetail").click(function () {
        var videoUrl = $("#videoUrl").attr("src");
        if (videoUrl.trim() === '') {
            layer.msg("请先上传视频");
            return;
        }
        // 查看视频
        var videoElem =
            '<video width="100%" height="100%" controls autobuffer autoplay="autoplay" loop="loop">' +
            '<source src="' + $("#videoUrl").attr("src") + '" type="video/mp4"/>' +
            '</video>'
        layer.open({
            type: 1,
            area: ['960px', '600px'],
            title: '播放视频',
            content: videoElem,
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
            '<img src="' + picture + '" style="height: 100%; max-width: 100%; margin: auto;" />' +
            '</div>';
        layer.open({
            type: 1,
            shade: 0.8,
            offset: 'auto',
            title: '视频封面',
            area: ['960px', '600px'],
            content: pictureElem,
        });
    });

// 保存
    function saveHomepage() {
        let homepageId = $("#id").attr("value");
        let formData = $("#homepageForm").serializeObject();
        formData.id = homepageId;
        formData.videoUrl = $("#videoUrl").attr("src");
        formData.picture = $('#picture').attr('src');
        console.log(JSON.stringify(formData));

        let postUrl;
        if (homepageId == '') {
            postUrl = "/ccb/homepage/create";
        } else {
            postUrl = "/ccb/homepage/update";
        }

        $.post(postUrl, formData, function (data) {
            if (data.code == '200') {
                layer.msg(data.msg);
            } else {
                layer.msg(data.msg);
            }
        }, "json");

    }
    function resetForm() {
        $("#videoUrl").attr("src", "");
        $("#activity").text("");
        $('#picture').attr('src', "");
    }

// 主页视频上传
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
                $('#videoUrl').attr('src', result); //视频链接
            });
        }
        , done: function (res) {
            //如果上传失败
            if (res.code == '400') {
                layer.msg('上传失败');
                return;
            }
            //上传成功的一些操作

            $('#videoUrl').attr('src', res.data.url);
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
    var uploadPicture = upload.render({
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
                uploadPicture.upload();
            });
        }
    });


});