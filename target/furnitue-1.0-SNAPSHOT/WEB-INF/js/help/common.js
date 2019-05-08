
var rootPath;
$(function(){
    rootPath = $("#absolutePath").val();

    $.ajax({
        url :rootPath+'dict/dictList',
        type : "post",
        data:{dicType:'car_price'},
        dataType : "json",
        success : function(result) {
            var h = "";
            $.each(result, function(key, value) {
                h += "<option value='" + value.d_id + "'>" + value.dic_value //下拉框序言的循环数据
                    + "</option>";
            });
            $("#cPriceType").append(h);//append 添加进去并展示

        }
    });
    $.ajax({
        url :rootPath+'dict/dictList',
        type : "post",
        data:{dicType:'car_type'},
        dataType : "json",
        success : function(result) {
            var h = "";
            $.each(result, function(key, value) {
                h += "<option value='" + value.d_id + "'>" + value.dic_value//下拉框序言的循环数据
                    + "</option>";
            });
            $("#cType").append(h);//append 添加进去并展示
        }
    });
    $.ajax({
        url :rootPath+'buliding/bulidingList',
        type : "post",
        data:{pagination:false},
        dataType : "json",
        success : function(result) {

            var h = "";
            $.each(result, function(key, value) {
                h += "<option value='" + value.b_id + "'>" + value.b_number//下拉框序言的循环数据
                    + "</option>";
            });
            $("#cBuildingId").append(h);//append 添加进去并展示
        }
    });

    $.ajax({
        url :rootPath+'carManager/carseatList',
        type : "post",
        data:{pagination:false},
        dataType : "json",
        success : function(result) {
            var h = "";
            $.each(result, function(key, value) {
                h += "<option value='" + value.cs_number + "'>" + value.cs_number//下拉框序言的循环数据
                    + "</option>";
            });
            $("#csNumber").append(h);//append 添加进去并展示
        }
    });

});
