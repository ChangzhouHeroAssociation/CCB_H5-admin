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
        formData.image = $("#uImage").attr("src");
        formData.enabled = isEnable;
        /* 能编辑的肯定没有被删除 */
        formData.status = 1;
        formData.videoIds = videosInChannel.getValue('value');

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
        $("#id").attr("value", "");
        $("#channelName").attr("value", "");
        $("#content").text("");

        $("#uImage").attr("src", '');
        $("#iImage").attr("src", '');

        /* 默认开启 */
        $("#switchEnable").val("");
        $("#switchEnable").removeAttr("checked");
        $("#switchEnable").attr("checked", "");
        videosInChannel.setValue([ ]);

    }

    var videosInChannel = xmSelect.render({
        el: "#video",
        language: "zn",
        tips: "选择频道内的视频",
        data: []
    });

    axios({
        method: 'get',
        url: '/ccb/channel/videoSelectList?id=' + $("#id").attr("value"),
    }).then(response => {
        var res = response.data;

        videosInChannel.update({
            data: res.data,
            autoRow: true,
        })
    });


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

// 频道大图上传
    var uploadInst = upload.render({
        elem: '#uploadImage'
        , url: '/uploadFile/image' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
        , method: 'POST'
        // 限制格式
        , ext: 'jpg|png|gif|bmp|jpeg'
        , before: function (obj) {

            //预读本地文件示例，不支持ie8
            obj.preview(function (index, file, result) {
                $('#uImage').attr('src', result); //图片链接（base64）
            });

        }
        , done: function (res) {
            //如果上传失败
            if (res.code == '400') {
                return layer.msg('上传失败');
            }
            //上传成功的一些操作
            $('#uImage').attr('src', res.data.url);
            $('#ImageText').html(''); //置空上传失败的状态
        }
        , error: function () {
            //演示失败状态，并实现重传
            var ImageText = $('#ImageText');
            ImageText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
            ImageText.find('.demo-reload').on('click', function () {
                uploadInst.upload();
            });
        }
    });

});

