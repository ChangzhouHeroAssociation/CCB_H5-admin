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
        saveCategory();
        return false;
    });

    $("#resetBtn").click(function() {
        resetForm();
    });

// 保存
    function saveCategory() {
        let categoryId = $("#id").attr("value");
        let formData = $("#categoryForm").serializeObject();
        formData.id = categoryId;
        formData.url = $("#url").attr("src");
        /* 能编辑的肯定没有被删除 */
        formData.status = 1;
        var videoIds = [];
        $("input[name^='video']:checked").each(function (i) {
            videoIds[i] = $(this).attr("value");
        });


        formData.videoIds = videoIds;
        console.log(JSON.stringify(formData));

        let postUrl;
        if (categoryId == '') {
            postUrl = "/ccb/category/create";
        } else {
            postUrl = "/ccb/category/update";
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
        $("#categoryName").attr("value", "");

    }
});

