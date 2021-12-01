let tableIns;
let contextPath = window.location.protocol + "://" + window.location.host;
layui.use(['table', 'form', 'upload', 'layer', 'element'], function(){
    var table = layui.table
        ,form = layui.form
        , layer = layui.layer;

    tableIns = table.render({
        elem: '#channelTable'
        , height: 'full-85'
        , cellMinWidth: 80
        , page: true
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
                { field:'id', width: '5%', title: '序号', sort: true }
                , { field:'enabled', title: '是否开启', width: '10%', sort: true, templet: '#switchEnable' }
                , { field:'channelName', width: '15%', title: '频道名字', sort: true }
                // , { field:'content', width:150, title: '频道描述', sort: true }
                , { field:'icon', width: '20%', title: '频道图标', templet: function(res) {
                    return "<img src='" + res.icon +"'/>"
                } }
                , { field: 'weight', width: '10%', title: '排序', sort: true }
                ,{ field:'createTime', title: '创建时间', width:  '10%', sort: true }
                ,{ field:'updateTime', width: '10%', title: '更新时间', sort: true }
                ,{ fixed: 'right', width: '20%', title: '操作', align:'center', toolbar: '#channelBarDemo' }
            ]
        ]
        // , done: function (res, curr, count) {
        //     if (curr > 1 && res.data.content.length === 0) {
        //         curr = curr - 1;
        //         tableIns.reload({
        //             page: {
        //                 curr: curr
        //             },
        //             where: {
        //             },
        //         });
        //     }
        // }
    });

    //头工具栏事件
    table.on('toolbar(channel)', function(obj){
        switch(obj.event){
            case 'createChannel':
                layer.open({
                    type: 2,
                    title: '新增',          // 弹窗标题
                    shadeClose: true,           //弹出框之外的地方是否可以点击
                    offset: 'auto',
                    area: ['60%', '80%'],
                    content: '/ccb/channel/channelForm',
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
            layer.open({
                type: 2,
                title: '编辑',          // 弹窗标题
                shadeClose: true,           //弹出框之外的地方是否可以点击
                offset: 'auto',
                area: ['60%', '80%'],
                content: '/ccb/channel/channelForm?id=' + data.id,
                end: function () {
                    tableIns.reload();
                }
            });
        } else if (obj.event === 'video') {
            if (data.video.trim() == '') {
                layer.msg("没有找到视频，请先添加视频");
                return;
            }
            // 查看视频
            var videoElem =
                '<video width="100%" height="100%" controls autobuffer autoplay="autoplay" loop="loop">' +
                '<source src="' + data.video + '" type="video/mp4"/>' +
                '</video>'
            layer.open({
                type: 1,
                area: ['960px', '600px'],
                title: '播放视频',
                content: videoElem,
            });
        }
    });

    //监听状态操作
    form.on('switch(enable)', function(obj){
        let isEnable = obj.elem.checked == true ? 1 : 0;
        $.post('/ccb/channel/switch', {
            "id": this.value,
            "isEnabled": isEnable
        }, function (data) {
            layer.msg(data.msg);
        }, "json")
    });

});
