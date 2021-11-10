let tableIns;
let contextPath = window.location.protocol + "://" + window.location.host;
layui.use(['table', 'form', 'layer'], function(){
    var table = layui.table
        , layer = layui.layer
        , form = layui.form;

    tableIns = table.render({
        elem: '#videoTable'
        , height: 'full-195'
        , cellMinWidth: 80
        , page: true
        ,url:'/ccb/video/page'
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
        , toolbar: '#videoTableToolbarDemo'
        , title: '视频列表'
        ,cols: [
            [
                { field:'id', width: '5%', title: 'ID', sort: true }
                , { field:'isRecommend', title: '推荐', width: '5%', sort: true, templet: '#switchRecommend' }
                , { field: 'channelName', width: '10%', title: '频道', templet: function(res){
                    if (res.channel == null) {
                        return "";
                    } else {
                        return res.channel.channelName;
                    }

                } }
                , { field:'videoTitle', width: '10%', title: '视频标题', sort: true }
                , { field:'teacherName', width: '10%', title: '讲师', templet: function(res) {
                    console.log(JSON.stringify(res.teachers));
                    var tString = "";
                    var teacherLength = res.teachers.length;
                    if (teacherLength == 0) {
                        return "";
                    } else {
                        tString = res.teachers[0].teacherName;
                        for (var i = 1; i < teacherLength; i++) {
                            tString += ", " + res.teachers[i].teacherName;
                        }
                    }
                    return tString;
                } }
                , { field:'views', width: '7%', title: '观看数', sort: true }
                , { field:'enjoyCount', width: '7%', title: '点赞数', sort: true }
                , { field:'shareCount', width: '6%', title: '分享数', sort: true }
                , { field:'createTime', title: '创建时间', width: '10%', sort: true }
                , { field:'updateTime', width: '10%', title: '更新时间', sort: true }
                , { fixed: 'right', width: '20%', title: '操作', align:'center', toolbar: '#videoBarDemo' }
            ]
        ]
    });

    // 搜索框监测
    var active = {
        reload: function(){
            var keyword = $('#search-input');	//得到搜索框里已输入的数据
            var channelId = $("#channelId option:selected");
            //执行重载
            table.reload('videoTable', {
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

    //头工具栏事件
    table.on('toolbar(video)', function(obj){
        switch(obj.event){
            case 'createVideo':
                layer.open({
                    type: 2,
                    title: '新增',          // 弹窗标题
                    shadeClose: true,           //弹出框之外的地方是否可以点击
                    offset: 'auto',
                    area: ['60%', '80%'],
                    content: '/ccb/video/videoForm',
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
    table.on('tool(video)', function(obj){
        let data = obj.data;
        if(obj.event === 'del'){
            /* 删除操作 */
            layer.confirm('真的删除行么', function(index){
                $.post("/ccb/video/delete", {
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
                content: '/ccb/video/videoForm?id=' + data.id,
                end: function () {
                    tableIns.reload();
                }
            });
        } else if (obj.event === 'video') {
            if (data.url.trim() == '') {
                layer.msg("没有找到视频，请先添加视频");
                return;
            }
            // 查看视频
            var videoElem =
                '<video width="100%" height="100%" controls autobuffer autoplay="autoplay" loop="loop">' +
                '<source src="' + data.url + '" type="video/mp4"/>' +
                '</video>'
            layer.open({
                type: 1,
                area: ['960px', '600px'],
                title: '播放视频',
                content: videoElem,
            });
        } else if (obj.event === 'textPage') {
            if (data.textPage.trim() == '') {
                layer.msg("没有找到文稿，请先添加文稿");
                return;
            }

            // 查看文稿
            var textPageElem =
                '<div style="width: 960px; height: 720px; display: table-cell; vertical-align: middle">' +
                    '<img src="' + data.textPage + '" style="max-width: 100%; display: block; margin: auto" />' +
                '</div>';
            layer.open({
                type: 1,
                shade: 0.8,
                offset: 'auto',
                title: false,
                area: ['960px', '720px'],
                content: textPageElem,
            });
        }
    });

    //监听状态操作
    form.on('switch(enable)', function(obj){
        let isRecommend = obj.elem.checked == true ? 1 : 0;
        $.post('/ccb/video/switch', {
            "id": this.value,
            "isRecommend": isRecommend
        }, function (data) {
            layer.msg(data.msg);
        }, "json")
    });

});
