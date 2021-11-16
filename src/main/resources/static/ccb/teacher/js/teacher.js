let tableIns;
let contextPath = window.location.protocol + "://" + window.location.host;
layui.use(['table', 'form', 'upload', 'layer', 'element'], function(){
    var table = layui.table
        , layer = layui.layer;

    tableIns = table.render({
        elem: '#teacherTable'
        , height: 'full-85'
        , cellMinWidth: 80
        , page: true
        ,url:'/ccb/teacher/page'
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
        , toolbar: '#teacherTableToolbarDemo'
        , title: '讲师列表'
        ,cols: [
            [
                { field:'id', width: '5%', title: '序号', sort: true }
                , { field:'teacherName', width: '15%', title: '讲师名字', sort: true }
                // , { field:'description', width:150, title: '讲师简介' }
                , { field:'teacherPhoto', width: '30%', title: '讲师照片', templet: function(res) {
                    return "<img src='" + res.teacherPhoto +"'/>"
                } }
                , { field: 'weight', width: '10%', title: '排序', sort: true }
                , { field:'createTime', title: '创建时间', width: '10%', sort: true }
                , { field:'updateTime', width: '10%', title: '更新时间', sort: true }
                , { fixed: 'right', width: '20%', title: '操作', align:'center', toolbar: '#teacherBarDemo' }
            ]
        ]
    });

    //头工具栏事件
    table.on('toolbar(teacher)', function(obj){
        switch(obj.event){
            case 'createTeacher':
                layer.open({
                    type: 2,
                    title: '新增',          // 弹窗标题
                    shadeClose: true,           //弹出框之外的地方是否可以点击
                    offset: 'auto',
                    area: ['60%', '80%'],
                    content: '/ccb/teacher/teacherForm',
                    end: function () {
                        tableIns.reload();
                    }
                });
                break;

            //自定义头工具栏右侧图标 - 提示
            case 'LAYTABLE_TIPS':
                layer.alert('这是工具栏右侧自定义的一个图标按钮');
                break;
        };
    });

    // 监听右侧工具条
    table.on('tool(teacher)', function(obj){
        let data = obj.data;
        if(obj.event === 'del'){
            /* 删除操作 */
            layer.confirm('真的删除行么', function(index){
                $.post("/ccb/teacher/delete", {
                    "id": data.id
                }, function (data) {
                    console.log(data.msg);
                }, "json");
                layer.close(index);
                tableIns.reload();
            });
        } else if(obj.event === 'edit'){
            /* 编辑操作 */
            layer.open({
                type: 2,
                title: '编辑',          // 弹窗标题
                shadeClose: true,           //弹出框之外的地方是否可以点击
                offset: 'auto',
                area: ['60%', '80%'],
                content: '/ccb/teacher/teacherForm?id=' + data.id,
                end: function () {
                    tableIns.reload();
                }
            });
        }
    });
});
