let tableIns;
let contextPath = window.location.protocol + "://" + window.location.host;
layui.use(['table', 'form', 'upload', 'layer', 'element'], function(){
    var table = layui.table
        , layer = layui.layer;

    tableIns = table.render({
        elem: '#answerTable'
        , height: 'full-195'
        , cellMinWidth: 80
        , page: true
        ,url:'/ccb/answer/page'
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
        , toolbar: '#answerTableToolbarDemo'
        , title: '视频列表'
        ,cols: [
            [
                { field:'id', width:80, title: 'ID', sort: true }
                , { field: 'channelName', width: 150, title: '频道', templet: function(res){
                    if (res.channel == null) {
                        return "";
                    } else {
                        return res.channel.channelName;
                    }

                } }
                , { field:'category', width:150, title: '问题类型', templet: function(res) {
                    switch (res.question.category) {
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
                , { field:'title', width:300, title: '题目', templet: function (res) {
                    return res.question.title;
                } }
                , { field:'option', width:300, title: '选项', templet: function(res) {
                    var content = res.question.option.replaceAll("&", "</br>");
                    return '<p style="line-height: 16px">' + content + '</p>';
                } }
                , { field: 'result', width: 300, title: '回答' }
                , { field:'createTime', title: '创建时间', minWidth: 160, sort: true }
                , { field:'updateTime', width:160, title: '更新时间', sort: true }
            ]
        ]
    });

    // 搜索框监测
    var active = {
        reload: function(){
            var keyword = $('#search-input');	//得到搜索框里已输入的数据
            var channelId = $("#channelId option:selected");
            //执行重载
            table.reload('answerTable', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                ,where: {
                    channelId: channelId.val(),
                    keyword:  keyword.val()		//在表格中进行搜索
                }
            });
        }
    };

    $('#searchBtn').on('click', function(){
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });

});
