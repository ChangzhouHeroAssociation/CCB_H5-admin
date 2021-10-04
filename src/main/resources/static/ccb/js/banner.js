let tableIns;
let contextPath = window.location.protocol + "://" + window.location.host;
layui.use(['table', 'form', 'upload', 'layer', 'element'], function(){
    var table = layui.table
        ,form = layui.form
        , upload = layui.upload
        , element = layui.element
        , layer = layui.layer;

    tableIns = table.render({
        elem: '#bannerTable'
        ,url:'/ccb/banner/page'
        , method: 'GET'
        //请求前参数处理
        , request: {
            pageName: 'page' //页码的参数名称，默认：page
            , limitName: 'limit' //每页数据量的参数名，默认：limit
        }
        , response: {
            statusName: 'flag' //规定数据状态的字段名称，默认：code
            , statusCode: true //规定成功的状态码，默认：0
            , msgName: 'msg' //规定状态信息的字段名称，默认：msg
            , countName: 'records' //规定数据总数的字段名称，默认：count
            , dataName: 'rows' //规定数据列表的字段名称，默认：data
        }
        //响应后数据处理
        , parseData: function (res) { //res 即为原始返回的数据
            var data = res.data;
            return {
                "flag": res.flag, //解析接口状态
                "msg": res.msg, //解析提示文本
                "records": data.totalElements, //解析数据长度
                "rows": data.content //解析数据列表
            };
        }
        , toolbar: '#bannerTableToolbarDemo'
        , title: '轮播图列表'
        ,cols: [
            [
                {field:'id', width:80, title: 'ID', sort: true}
                ,{field:'bannerName', width:80, title: '轮播图名字', sort: true}
                ,{field:'url', width:150, title: '轮播图', templet: function(res) {
                    return "<img src='" + res.url +"'/>"
                }}
                ,{field:'weight', width:80, title: '权重', sort: true}
                ,{field:'createTime', title: '创建时间', minWidth: 160, sort: true}
                ,{field:'updateTime', width:160, title: '更新时间', sort: true}
                ,{fixed: 'right', width:178, align:'center', toolbar: '#bannerBarDemo'}
            ]
        ]
        ,page: true
    });
    // 监听右侧工具条
    table.on('tool(banner)', function(obj){
        let data = obj.data;
        if(obj.event === 'del'){
            /* 删除操作 */
            layer.confirm('真的删除行么', function(index){
                $.post("/ccb/banner/delete", {
                    "id": data.id
                }, function (data) {
                    console.log(data.msg);
                }, "json");
                layer.close(index);
                tableIns.reload();
            });
        } else if(obj.event === 'edit'){
            /* 编辑操作 */
            $("#bannerForm").form(data);
            $("#uImage").attr("src", data.url);
            form.render();
        }

    });

    // 自定义验证规则
    form.verify({
        name: function(value){
            if(value.trim() == ''){
                return '名字不能为空';
            }
        }
        , weight: function (value) {
            console.log(value);
            if (isNaN(value)) {
                return '请输入数字';
            }
            if (value < 0 || value > 100) {
                return "请输入0 - 100 的数字";
            }
        }
    });


    $("#commit").click(function () {
        saveBanner();
    });

    $("#reset,#createBanner").click(function() {
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
            console.log(data.msg);
        }, "json")

    }
    function resetForm() {
        $("#bannerForm").form(null);
        $("#uImage").attr("src", null);
    }

    //常规使用 - 普通图片上传
    var uploadInst = upload.render({
        elem: '#uploadImage'
        , url: '/upload/image' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
        , method: 'POST'
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
            $('#uImage').attr('src', res.data.src);
            $('#demoText').html(''); //置空上传失败的状态
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
