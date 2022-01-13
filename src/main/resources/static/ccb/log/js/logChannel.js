let tableIns;
let contextPath = window.location.protocol + "://" + window.location.host;
layui.use(['table', 'form', 'layer', 'laydate'], function() {
    let table = layui.table,
        layer = layui.layer,
        form = layui.from,
        laydate = layui.laydate;

    let startDate, endDate;

    tableIns = table.render({
        elem: '#logChannelTable'
        , height: 'full-195'
        , cellMinWidth: 80
        , page: true
        ,url:'/ccb/logChannel/list'
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
            let data = res.data;
            return {
                "flag": res.flag, //解析接口状态
                "msg": res.msg, //解析提示文本
                "records": data.totalElements, //解析数据长度
                "rows": data.content //解析数据列表
            };
        }
        , title: '频道日志列表'
        ,cols: [
            [
                { field:'id', width: '10%', title: '序号', sort: true }
                , { field: 'distributionName', width: '30%', title: '渠道名称', templet: function(res) {
                    return res.distribution.name;
                } }
                , { field: 'channelName', width: '20%', title: '频道名称' }
                , { field:'count', width: '20%', title: '访问次数', sort: true }
                , { field:'createTime', title: '日期', width: '20%', sort: true }
            ]
        ]
    });

    // 搜索框监测
    let active = {
        reload: function(){
            let channelName = $("#channelName option:selected");
            let distributionId = $("#distributionId option:selected");
            //执行重载
            table.reload('logChannelTable', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                ,where: {
                    channelName: channelName.text(),
                    distributionId: distributionId.val(),
                    startTime: startDate,
                    endTime: endDate
                }
            });
        }
    };

    $('#searchBtn').on('click', function(){
        let type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });

    //日期
    let nowTime = new Date();
    let startTime = laydate.render({
        elem:'#startDate',
        type:'datetime',
        btns: ['confirm'],
        min: "2022-1-1",
        max:'nowTime',//默认最大值为当前日期
        done:function(value,date){
            startDate = value;
//    		console.log(value); //得到日期生成的值，如：2017-08-18
//    	    console.log(date); //得到日期时间对象：{year: 2017, month: 8, date: 18, hours: 0, minutes: 0, seconds: 0}
            endTime.config.min={
                year:date.year,
                month:date.month-1,//关键
                date:date.date,
                hours:date.hours,
                minutes:date.minutes,
                seconds:date.seconds
            };

        }
    })
    let endTime = laydate.render({
        elem: '#endDate',
        type: 'datetime',
        btns: ['confirm'],
        max: 'nowTime',
        done: function (value, date) {
            endDate = value;
//    		console.log(value); //得到日期生成的值，如：2017-08-18
//    	    console.log(date); //得到日期时间对象：{year: 2017, month: 8, date: 18, hours: 0, minutes: 0, seconds: 0}
            startTime.config.max = {
                year: date.year,
                month: date.month - 1,//关键
                date: date.date,
                hours: date.hours,
                minutes: date.minutes,
                seconds: date.seconds
            }

        }
    });

    $("#export").click(function() {
        if (startDate == undefined) {
            startDate = "";
        }
        if (endDate == undefined) {
            endDate = "";
        }
        let exportTable = table.render({
            elem: '#exportTable'
            ,url:'/ccb/logChannel/list?channelName=' + $("#channelName option:selected").text()
                + "&distributionId=" + $("#distributionId option:selected").val()
                + "&startTime=" + startDate + "&endTime=" + endDate
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
                let data = res.data;
                return {
                    "flag": res.flag, //解析接口状态
                    "msg": res.msg, //解析提示文本
                    "records": data.totalElements, //解析数据长度
                    "rows": data.content //解析数据列表
                };
            }
            , title: '频道日志列表'
            ,cols: [
                [
                    { field:'id', width: '10%', title: '序号', sort: true }
                    , { field: 'distributionName', width: '30%', title: '渠道名称', templet: function(res) {
                        return res.distribution.name;
                    } }
                    , { field: 'channelName', width: '20%', title: '频道名称' }
                    , { field:'count', width: '20%', title: '访问次数', sort: true }
                    , { field:'createTime', title: '日期', width: '20%', sort: true }
                ]
            ]
            , page: true
            , limit: 99999
            , done: function (res, curr, count) {
                exportData = res.data;
                table.exportFile(exportTable.config.id, exportData, 'csv');
            }
        });
    });


});