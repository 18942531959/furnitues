layui.use('flow', function(){
    var flow = layui.flow;

    flow.load({
        elem: '#LAY_demo1' //流加载容器
        ,scrollElem: '#LAY_demo1' //滚动条所在元素，一般不用填，此处只是演示需要。
        ,done: function(page, next){ //执行下一页的回调

            //模拟数据插入
            setTimeout(function(){
                var lis = [];
                for(var i = 0; i < 8; i++){
                    lis.push('<li>'+ ( (page-1)*8 + i + 1 ) +'</li>')
                }

                //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                next(lis.join(''), page < 10); //假设总页数为 10
            }, 500);
        }
    });

    flow.load({
        elem: '#LAY_demo2' //流加载容器
        ,scrollElem: '#LAY_demo2' //滚动条所在元素，一般不用填，此处只是演示需要。
        ,isAuto: false
        ,isLazyimg: true
        ,done: function(page, next){ //加载下一页
            //模拟插入
            setTimeout(function(){
                var lis = [];
                for(var i = 0; i < 6; i++){
                    lis.push('<li><img lay-src="//s17.mogucdn.com/p2/161011/upload_279h87jbc9l0hkl54djjjh42dc7i1_800x480.jpg?v='+ ( (page-1)*6 + i + 1 ) +'"></li>')
                }
                next(lis.join(''), page < 6); //假设总页数为 6
            }, 500);
        }
    });

    //按屏加载图片
    flow.lazyimg({
        elem: '#LAY_demo3 img'
        ,scrollElem: '#LAY_demo3' //一般不用设置，此处只是演示需要。
    });

});
