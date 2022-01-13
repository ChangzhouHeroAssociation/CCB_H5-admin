let tableIns;
let exportData;
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
                { field:'id', width: '5%', title: '序号', sort: true }
                , { field: 'channels', width: '15%', title: '频道', templet: function(res){
                    var channelStr = "";
                    var channelLength = res.question.channels.length;
                    if (channelLength == 0) {
                        return "";
                    }
                    channelStr = res.question.channels[0].channelName;
                    for (var i = 1; i < channelLength; i++) {
                        channelStr += ", " + res.question.channels[i].channelName;
                    }
                    return channelStr;
                } }
                , { field:'category', width: '10%', title: '问题类型', templet: function(res) {
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
                , { field:'title', width: '20%', title: '题目', templet: function (res) {
                    return res.question.title;
                } }
                , { field:'option', width: '20%', title: '选项', templet: function(res) {
                    var content = res.question.option.replaceAll("&", "</br>");
                    return '<p style="line-height: 16px">' + content + '</p>';
                } }
                , { field: 'result', width: '20%', title: '回答', templet: function(res) {
                    var result = res.result.replaceAll("&", "</br>");
                    return '<p style="line-height: 16px">' + result + '</p>';
                } }
                , { field:'updateTime', width: '10%', title: '更新时间', sort: true }
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



    let activeExport = {
        reload: function() {
            var keyword = $('#search-input');	//得到搜索框里已输入的数据
            var channelId = $("#channelId option:selected");
            //执行重载
            table.reload('exportTable', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                , where: {
                    channelId: channelId.val(),
                    keyword:  keyword.val()		//在表格中进行搜索
                }
            });
        }
    };

    $("#exportBtn").on('click', function(){
        // 获取搜索关键词
        var keyword = $('#search-input').val();	//得到搜索框里已输入的数据
        var channelId = $("#channelId option:selected").val();

        // 点击导出后 渲染表格
        let exportTableIns = table.render({
            elem: '#exportTable'
            , page: false
            , url:'/ccb/answer/page?channelId='+ channelId + '&keyword=' + keyword
            , method: 'GET'
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
            , title: '问卷结果'
            , cols: [
                [
                    { field:'id', width: '5%', title: '序号', sort: true }
                    , { field: 'channels', width: '15%', title: '频道', templet: function(res){
                        var channelStr = "";
                        var channelLength = res.question.channels.length;
                        if (channelLength == 0) {
                            return "";
                        }
                        channelStr = res.question.channels[0].channelName;
                        for (var i = 1; i < channelLength; i++) {
                            channelStr += ", " + res.question.channels[i].channelName;
                        }
                        return channelStr;
                    } }
                    , { field:'category', width: '10%', title: '问题类型', templet: function(res) {
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
                    , { field:'title', width: '20%', title: '题目', templet: function (res) {
                        return res.question.title;
                    } }
                    , { field:'option', width: '15%', title: '选项', templet: function(res) {
                        var content = res.question.option.replaceAll("&", "</br>");
                        return '<p style="line-height: 16px">' + content + '</p>';
                    } }
                    , { field: 'result', width: '15%', title: '回答', templet: function(res) {
                        var result = res.result.replaceAll("&", "</br>");
                        return '<p style="line-height: 16px">' + result + '</p>';
                    } }
                    , { field: 'index', width: '10%', title: '答案序号', templet: function (res) {
                        let optionList = res.question.option.split('&');
                        let resultList = res.result.split("&");
                        let indexList = [];
                        for (let i = 0; i < resultList.length; i++) {
                            for (let j = 0; j < optionList.length; j++) {
                                if (optionList[j].search(resultList[i]) != -1) {
                                    indexList.push(j + 1);
                                    continue;
                                }
                            }
                        }
                        return indexList.join(',');
                    } }
                    , { field:'updateTime', width: '10%', title: '更新时间', sort: true }
                ]
            ]
            , limit: 9999
            , done: function (res, curr, count) {
                exportData = res.data;
                table.exportFile(exportTableIns.config.id, exportData, 'csv');
            }
        });
    });

});
