layui.use(['table', 'form', 'upload', 'layer', 'element'], function() {
    var table = layui.table
        ,form = layui.form
        , upload = layui.upload
        , element = layui.element
        , layer = layui.layer;

    // 自定义验证规则
    form.verify({
        name: [ /[\S]+/, "名字不能为空" ]
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
        saveBanner();
        return false;
    });

    $("#resetBtn").click(function() {
        resetForm();
    });

    // 保存
    function saveBanner() {
        let bannerId = $("input[name='id']").val();
        let postUrl;
        let formData = $("#bannerForm").serializeObject();
        formData.url = $("#uImage").attr("src");
        if (bannerId == '') {
            postUrl = "/ccb/banner/create";
        } else {
            postUrl = "/ccb/banner/update";
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
        // $("#id").attr("value", '');
        $("#bannerName").attr("value", '');
        $("#weight").attr("value", '');
        $("#uImage").attr("src", null);
    }

    //常规使用 - 普通图片上传
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
            $('#demoText').html(''); //置空上传失败的状态
            layer.msg('上传成功');
        }
        , error: function () {
            //演示失败状态，并实现重传
            var demoText = $('#demoText');
            demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
            demoText.find('.demo-reload').on('click', function () {
                uploadInst.upload();
            });
        }
    });

});