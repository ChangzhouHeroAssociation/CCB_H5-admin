let tableIns;
let contextPath = window.location.protocol + "://" + window.location.host;
layui.use(['table', 'form', 'upload', 'layer', 'element'], function(){
    var table = layui.table
        , layer = layui.layer;

    tableIns = table.render({
        elem: '#questionTable'
        , height: 'full-195'
        , cellMinWidth: 80
        , page: true
        ,url:'/ccb/question/page'
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
        , toolbar: '#questionTableToolbarDemo'
        , title: '问卷列表'
        ,cols: [
            [
                { field:'id', width:80, title: 'ID', sort: true }
                , { field:'channel', width:150, title: '频道', sort: true, templet: function(res) {
                    return res.channel.channelName;
                } }
                , { field:'category', width:150, title: '问题类型', sort: true, templet: function(res) {
                    switch (res.category) {
                        case 1:
                            return "单选";
                            break;
                        case 2:
                            return "多选";
                            break;
                        case 3:
                            return "判断";
                            break;
                        case 4:
                            return "填空";
                            break;
                        default:
                            return "";
                    }
                } }
                , { field:'title', width:300, title: '题目', sort: true }
                , { field:'option', width:300, title: '选项', templet: function(res) {
                    return res.option.replaceAll("&", "</br>");
                } }
                , { field:'weight', width:150, title: '排序', sort: true }
                , { field:'createTime', title: '创建时间', minWidth: 160, sort: true }
                , { field:'updateTime', width:160, title: '更新时间', sort: true }
                , { fixed: 'right', width:160, align:'center', toolbar: '#questionBarDemo' }
            ]
        ]
    });

    // 搜索框监测
    var active = {
        reload: function(){
            var demoReload = $("#channelId option:selected");	//得到搜索框里已输入的数据
            //执行重载
            table.reload('questionTable', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                ,where: {
                    name:  demoReload.val()		//在表格中进行搜索
                }
            });
        }
    };

    $('#searchBtn').on('click', function(){
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });

//头工具栏事件
    table.on('toolbar(question)', function(obj){
        switch(obj.event){
            case 'createQuestion':
                layer.open({
                    type: 2,
                    title: '新增',            // 弹窗标题
                    shadeClose: true,       //弹出框之外的地方是否可以点击
                    offset: 'auto',
                    area: ['60%', '80%'],
                    content: '/ccb/question/questionForm',
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
    table.on('tool(question)', function(obj){
        let data = obj.data;
        if(obj.event === 'del'){
            /* 删除操作 */
            layer.confirm('真的删除行么', function(index){
                $.post("/ccb/question/delete", {
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
                content: '/ccb/question/questionForm?id=' + data.id,
                end: function () {
                    tableIns.reload();
                }
            });
        }
    });
});
