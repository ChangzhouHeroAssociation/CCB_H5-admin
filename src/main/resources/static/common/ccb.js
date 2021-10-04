$.fn.serializeObject = function () {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function () {
        if (o[this.name]) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};

/**
 * 拓展表单对象：表单自动回显
 * 使用参考：$("#form1").form({"id":"112","username":"ff","password":"111","type":"admin"});
 */
$.fn.form = function (data) {
    let form = $(this);
    for (let i in data) {
        valuAtion(i, data[i]);
    }

    function valuAtion(name, value) {
        if (form.length < 1) {
            return;
        }
        if (form.find("[name='" + name + "']").length < 1) {
            return;
        }
        let input = form.find("[name='" + name + "']")[0];
        if ($.inArray(input.type, ["text", "password", "hidden", "select-one", "textarea"]) > -1) {
            $(input).val(value);
        } else if (input.type === "radio" || input.type === "checkbox") {
            form.find("[name='" + name + "'][value='" + value + "']").attr("checked", true);
        }
    }
};