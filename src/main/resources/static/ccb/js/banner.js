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
                ,{field:'bannerName', width:140, title: '轮播图名字', sort: true}
                ,{field:'url', width:150, title: '轮播图', templet: function(res) {
                    return "<img src='" + res.url +"'/>"
                }}
                ,{field:'weight', width:80, title: '权重', sort: true}
                ,{field:'createTime', title: '创建时间', minWidth: 160, sort: true}
                ,{field:'updateTime', width:160, title: '更新时间', sort: true}
                ,{fixed: 'right', width:170, align:'center', toolbar: '#bannerBarDemo'}
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
            layer.open({
                type: 2,
                title: '编辑',          // 弹窗标题
                shadeClose: true,           //弹出框之外的地方是否可以点击
                offset: 'auto',
                area: ['60%', '80%'],
                content: '/ccb/banner/bannerForm?id=' + data.id,
                end: function () {
                    tableIns.reload();
                }
            });
        }

    });

    $("#createBanner").click(function() {
        layer.open({
            type: 2,
            title: '新增',          // 弹窗标题
            shadeClose: true,           //弹出框之外的地方是否可以点击
            offset: 'auto',
            area: ['60%', '80%'],
            content: '/ccb/banner/bannerForm'
        });
    });

});
