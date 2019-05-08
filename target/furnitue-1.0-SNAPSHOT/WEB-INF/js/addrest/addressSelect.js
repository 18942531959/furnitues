//从js中按ID读取省市区
function getGeo(id,callBack){
	$.ajax({
		   type: "GET",
		   async: true,
		   url: "/assets/js/geo.js",
		   success: function(result){
				var json = JSON.parse(result);
				$.each(json, function(i, item) {
					if(item.key==id&&item.list.length>0){
						callBack(item.list);
					}
				}); 
		   }  
		});
}
//从js中按ID读取省市区
function getGeoSync(id,callBack){
	$.ajax({
		   type: "GET",
		   async: false,
		   url: "/assets/js/geo.js",
		   success: function(result){
				var json = JSON.parse(result);
				$.each(json, function(i, item) {
					if(item.key==id&&item.list.length>0){
						callBack(item.list);
					}
				}); 
		   }  
		});
}

$(function(){
	getProvince();
	$('.provinceId').combobox({
		onSelect: function(param){
			var tag = $(this).attr('id').substring(0,$(this).attr('id').length-2);
			$('#'+tag).val(param.geoName);
			var _this = this;
			getGeo(param.geoId,function(list){
				var city = $(_this).parent().children('.cityId');
				if(city.length==0){
					city = $(_this).parent().parent().children('div').eq(1).children('.cityId');
				}
				if(city.length==0){
					city = $(_this).parent().parent().children('div').eq(2).children('.cityId');
				}
				city.combobox({  
					 valueField:'geoId',
					 textField:'geoName',
					 data:list  
				 }); 
				 setValue(city.attr('id').substring(0,city.attr('id').length-2),list[0]);
				 getGeo(list[0].geoId,function(list1){
					 	var district = $(_this).parent().children('.districtId');
					 	if(district.length==0){
					 		district = $(_this).parent().parent().children('div').eq(1).children('.districtId');
					 	}
					 	if(district.length==0){
					 		district = $(_this).parent().parent().children('div').eq(2).children('.districtId');
					 	}
					 	district.combobox({  
							 valueField:'geoId',
							 textField:'geoName',
							 data:list1 
						 }); 
						 setValue(district.attr('id').substring(0,district.attr('id').length-2),list1[0]);
					});
			});
		}
	});
	$('.cityId').combobox({
		onSelect: function(param){
			var tag = $(this).attr('id').substring(0,$(this).attr('id').length-2);
			$('#'+tag).val(param.geoName);
			var _this = this;
			getGeo(param.geoId,function(list1){
				var district = $(_this).parent().children('.districtId');
			 	if(district.length==0){
			 		district = $(_this).parent().parent().children('div').eq(1).children('.districtId');
			 	}
			 	if(district.length==0){
			 		district = $(_this).parent().parent().children('div').eq(2).children('.districtId');
			 	}
				district.combobox({  
					 valueField:'geoId',
					 textField:'geoName',
					 data:list1 
				 }); 
				 setValue(district.attr('id').substring(0,district.attr('id').length-2),list1[0]);
			});
		}
		
	});
	
});
function setValue(tag,param){
	$('#'+tag+'Id').combobox("setValue",param.geoId);
	$('#'+tag).val(param.geoName);
}
function getProvince(){
	getGeo(100000,function(list){
		 $('.provinceId').combobox({  
			 valueField:'geoId',
			 textField:'geoName',
			 data:list  
		 }); 
	});
}
function getGeoList(id){
	var GeoList=[];
	$.ajax({
		   type: "GET",
		   async: false,
		   url: "/assets/js/geo.js",
		   success: function(result){
				var json = //从js中按ID读取省市区JSON.parse(result);
				$.each(json, function(i, item) {
					if(item.key==id&&item.list.length>0){
						GeoList=item.list
					}
				}); 
		   }  
		});
	return GeoList
}