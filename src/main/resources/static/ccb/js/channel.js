let tableIns;
let contextPath = window.location.protocol + "://" + window.location.host;
layui.use(['table', 'form', 'upload', 'layer', 'element'], function(){
    var table = layui.table
        ,form = layui.form
        , upload = layui.upload
        , element = layui.element
        , layer = layui.layer;

    tableIns = table.render({
        elem: '#channelTable'
        ,url:'/ccb/channel/page'
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
        , toolbar: '#channelTableToolbarDemo'
        , title: '频道列表'
        ,cols: [
            [
                {field:'id', width:80, title: 'ID', sort: true}
                ,{field:'channelName', width:120, title: '频道名字', sort: true}
                ,{field:'icon', width:150, title: '频道图标', templet: function(res) {
                    return "<img src='" + res.icon +"'/>"
                }}
                ,{field:'content', width:120, title: '频道描述', sort: true}
                ,{field:'image', width:150, title: '频道大图', templet: function(res) {
                    return "<img src='" + res.image +"'/>"
                }}
                ,{field:'createTime', title: '创建时间', minWidth: 160, sort: true}
                ,{field:'updateTime', width:160, title: '更新时间', sort: true}
                ,{fixed: 'right', width:178, align:'center', toolbar: '#channelBarDemo'}
            ]
        ]
        ,page: true
    });
    // 监听右侧工具条
    table.on('tool(channel)', function(obj){
        let data = obj.data;
        if(obj.event === 'del'){
            /* 删除操作 */
            layer.confirm('真的删除行么', function(index){
                $.post("/ccb/channel/delete", {
                    "id": data.id
                }, function (data) {
                    console.log(data.msg);
                }, "json");
                layer.close(index);
                tableIns.reload();
            });
        } else if(obj.event === 'edit'){
            /* 编辑操作 */
            $("#channelForm").form(data);
            $("#iImage").attr("src", data.icon);
            $("#uImage").attr("src", data.image);
            form.render();
        }

    });

    // 自定义验证规则
    form.verify({
        content: function(value){
            if(value.trim() == ''){
                return '内容不能为空';
            }
        }
    });


    $("#commit").click(function () {
        savechannel();
    });

    $("#reset,#createChannel").click(function() {
        resetForm();
    });

    // 保存
    function savechannel() {
        let channelId = $("input[name='id']").val();
        let postUrl;
        let formData = $("#channelForm").serializeObject();
        formData.icon = $("#iImage").attr("src");
        formData.image = $("#uImage").attr("src");
        if (channelId == '') {
            postUrl = "/ccb/channel/create";
        } else {
            postUrl = "/ccb/channel/update";
        }

        $.post(postUrl, formData, function (data) {
            console.log(data.msg);
        }, "json")

    }
    function resetForm() {
        $("#channelForm").form(null);
        $("#uImage").attr("src", null);
        $("#iImage").attr("src", null);
    }

    // 频道图标上传
    var uploadIcon = upload.render({
        elem: '#uploadIconImage'
        , url: '/upload/image' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
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
        , url: '/upload/image' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
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
