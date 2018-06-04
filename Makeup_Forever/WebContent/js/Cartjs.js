 	function deleteProduct(url){
 		var isdelete=window.confirm("亲~您确定删除此商品吗？");
 		if(isdelete){//如果用户点击了确定，则就跳转到指定的地址；
 			location.href=url;//设置要跳转的地址；
 		}
 	}
 	
 	//购物车中的商品图片，鼠标移入时，边框变为1像素 实线 红色
 	function over(o){
 			o.style.border="1px solid red";
 	}
 	//购物车中的商品图片，鼠标移出时，边框变为0像素  白色
 	function out(o){
 			o.style.border="none";
 	}
 	//清空购物车
 	function deleteAll(url){
 		var result=window.confirm("温馨提示：您确定清空购物车吗？");
 		if(result){
 			location.href=url;//这是跳转到后台
 		}
 		
 	}
 	
 	//先设置qq和微信不可见
 	$(document).ready(function(){
 		$(".To").hide();
 	});
 	
 	//分享到qq或者微信

 	$(document).ready(function(){
 			$(".From").mouseover(function(){
 				$(".To").show();
 			});
 			$(".From").mouseout(function(){
 				$(".To").hide();
 			});
 			
 		});
 
 	 function share(url){
 		 $(".From").click(function(){
				$(".To").show();
				window.location.href=url;
			}); 
 	 }
 	//全选
	function SelectAll(){
		var qx=document.getElementsByName("selecting");
		for( var i=0;i<=qx.length;i++){
			qx[i].checked=true; //选中
		}
	}
//全不选
	function CancelAll(){
		var qx=document.getElementsByName("selecting");
		for( var i=0;i<=qx.length;i++){
			qx[i].checked=false; 
		}
	}
//反选
	function ReSelect(){
		var qx=document.getElementsByName("selecting");
		for( var i=0;i<=qx.length;i++){
			if(qx[i].checked){ //如果已选
				qx[i].checked=false;//标记为未选
			}
			else {
				  qx[i].checked=true;//如果未选，则标记为已选
			}
		}
	}