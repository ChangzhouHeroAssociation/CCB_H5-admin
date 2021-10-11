layui.use(['table', 'form', 'upload', 'layer', 'element'], function () {
    var form = layui.form
        , layer = layui.layer;

    // 自定义验证规则
    form.verify({
        content: function (value) {
            if (value.trim() == '') {
                return '内容不能为空';
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
        saveQuestion();
        return false;
    });

    $("#resetBtn").click(function () {
        resetForm();
    });

// 保存
    function saveQuestion() {
        let formData = $("#questionForm").serializeObject();
        formData.id = $("#id").attr("value");
        formData.option = $("#optionList").find("input").map(function (index, value) {
            return $(this).val();
        }).get().join("&");
        /* 能编辑的肯定没有被删除 */
        formData.status = 1;
        if (formData.category != 4 && formData.option == '') {
            layer.msg("单选、多选、判断类型的问题需添加选项");
            return;
        }

        console.log(JSON.stringify(formData));

        let postUrl;
        if (formData.id == '') {
            postUrl = "/ccb/question/create";
        } else {
            postUrl = "/ccb/question/update";
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
        $("#id").attr("value", "");
        $("#channelId").empty();
        $("#category").empty();
        $("#title").text("");
        $("#option").val("");
        for (var i = 0; i < optionCount - 1; i++){
            $("#optionList").children(".layui-input-item").get(i).remove();
        }
        $("#weight").attr("value", "");
    }

    /* 动态添加选项输入框 */
    // 选项个数
    // console.log("option in js file -> " + tempOption);
    var optionCount = $("#optionList").children(".layui-input-item").length;
    var fieldCount = 0;

    // 监听添加
    $("#addOption").click(function () {
        addOption();
    });

    showOption();

    function showOption() {
        var tops = tempOption.split("&");
        for (var i = 0; i < tops.length - 1; i++) {
            addOption();
        }
        $("#optionList").find("input").map(function (index, value) {
            return $(this).val(tops[index]);
        });
    }

    function addOption() {
        //检索已有的input包含的name值
        var arr1 = [];
        fieldCount++;
        $("#optionList input[type='text']").each(function () {
            arr1.push($(this).attr('name'));
        });
        //所有name加入数组arr1
        var inputLine = $("<div></div>").addClass("layui-input-inline");
        var inputItem = $("<div></div>").addClass("layui-input-item");
        //console.log(optionList[fieldCount]);
        var newCount1 = "optionList[" + fieldCount + "]";
        //判断新生成的name值是否在已存在的数组中
        if ($.inArray(newCount1, arr1) === -1) {
            fieldCount = fieldCount;
            var inputBox = "<input type='text' name='optionList[" + fieldCount + "]' value='' autocomplete='off' placeholder='请输入选项' lay-verify='required' class='layui-input'>"
            var removeBtn = "<i class='layui-icon removeOption' onclick='removeOption(this)'>&#x1006;</i>";
            inputLine.append(inputBox);
            inputItem.append(inputLine, removeBtn)
            $("#optionList").append(inputItem);  // 追加新元素
            optionCount++;
        } else {
            fieldCount++;
            addOption();
        }
    }

    $("body").on("click", ".removeOption", function (e) { //user click on remove text
        if (optionCount > 1) {
            $(this).parent('div').remove(); //移除对应的父级div元素
            optionCount--; //decrement textbox
        } else {
            alert("请至少填写1个选项");
            return false;
        }
    })

});

