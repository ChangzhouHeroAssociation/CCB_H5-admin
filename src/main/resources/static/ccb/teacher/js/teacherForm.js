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
        , lengthLess30: function(value) {
            if (value.length > 30) {
                return '不得超过30字';
            }
        }
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
        saveTeacher();
        return false;
    });

    $("#resetBtn").click(function() {
        resetForm();
    });

    // 查看视频详情
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
            shade: 0.8,
            offset: 'auto',
            area: ['80%', '80%'],
            title: '播放视频',
            content: videoElem,
            shadeClose: false
        });
    });

// 保存
    function saveTeacher() {
        let teacherId = $("#id").attr("value");
        let formData = $("#teacherForm").serializeObject();
        formData.id = teacherId;
        formData.teacherPhoto = $("#tImage").attr("src");
        formData.video = $("#url").attr("src");
        /* 能编辑的肯定没有被删除 */
        formData.status = 1;

        console.log(JSON.stringify(formData));

        let postUrl;
        if (teacherId == '') {
            postUrl = "/ccb/teacher/create";
        } else {
            postUrl = "/ccb/teacher/update";
        }

        $.post(postUrl, formData, function (data) {
            var index = parent.layer.getFrameIndex(window.name);
            if (data.code == '200') {
                layer.msg(data.msg);
                parent.layer.close(index);
            } else {
                layer.msg(data.msg);
            }
        }, "json")

    }
    function resetForm() {
        // $("#id").attr("value", "");
        $("#teacherName").attr("value", "");
        $("#description").text("");
        $("#job").text("");
        $("#tImage").attr("src", "");
        $("#url").attr("src", "");
    }

// 讲师照片上传
    var uploadTeacher = upload.render({
        elem: '#uploadTeacherImage'
        , url: '/uploadFile/image' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
        , method: 'POST'
        // 限制格式
        , ext: 'jpg|png|gif|bmp|jpeg'
        , before: function (obj) {
            //预读本地文件示例，不支持ie8
            obj.preview(function (index, file, result) {
                $('#tImage').attr('src', result); //图片链接（base64）
            });
        }
        , done: function (res) {
            //如果上传失败
            if (res.code == '400') {
                return layer.msg('上传失败');
            }
            //上传成功的一些操作
            $('#tImage').attr('src', res.data.url);
            $('#teacherText').html(''); //置空上传失败的状态
            layer.msg('上传成功');
        }
        , error: function () {
            //演示失败状态，并实现重传
            var teacherText = $('#teacherText');
            teacherText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
            teacherText.find('.demo-reload').on('click', function () {
                uploadTeacher.upload();
            });
        }
    });

    // 讲师视频上传
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

