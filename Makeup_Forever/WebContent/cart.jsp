<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %><!-- EL的函数库=jstl的函数 -->

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Makeup-Forever|cart</title>
	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/myresponsee.css">
	<link rel="stylesheet" href="css/style.css">
	<!--Favicon-->
	<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <!-- Responsive -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="css/responsive.css" rel="stylesheet">
	
	<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
	<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head> 
  
<body class="size-1140">
<!-- |||||||||||||||||| page start ||||||||||||||||||| -->
<!-- ||||| --> <div id="page-main-content"> <!-- ||||| -->
<!-- ||||||||||||||||||||||||||||||||||||||||||||||||| -->
	
<!-- HEADER START -->
	<%@include file="top.jsp" %><!-- 在此插入统一的top页面 -->
<!-- HEADER END -->

<!-- PAGE CONTENT START -->
<div class="section"> 

	<!-- heading and description -->
	<div class="line">
		<div class="fullwidth margin-bottom-20">
			<h1 class="text-center">My Cart</h1>
			<p class="text-center">以下是您已添加到购物车的商品</p>
			<hr class="break-small break-center">
		</div>
	</div>

	<!-- cart left and right -->
	<div class="line">
	<c:if test="${empty sessionScope.carts}">
					<p>您的购物车空空如也！<a href="products.jsp" style="color:red;text-decoration:underline;">赶快去添加宝贝吧~</a></p>
			</c:if>

		<!-- cart left -->
		<div class="s-12 m-12 l-8" style="position:relative;left:200px; top:100px">
		
			<%-- <c:if test="${empty sessionScope.carts}">
					<p>您的购物车空空如也！<a href="products.jsp">赶快去添加宝贝吧~</a></p>
			</c:if> --%>
			<!-- item 1 -->
			<div style="position:relative;left:5px;top:-80px;margin-right:10px;padding-right:10px">
				<input type="button"  id="bt1" value="全选" />
				<input type="button" id="bt2" value="全不选" />
				<input type="button" id="bt3"  value="反选" />
				
			</div>
			
		<c:forEach var="cart" items="${sessionScope.carts}">
		
			<input type="checkbox" name="selecting" value="${cart.key.proID}" /><!-- 用商品id来鉴别当前的选中的商品对象 -->
				
			<div class="fullwidth cart-item" >
					<div class="s-12 m-4 l-3 cart-item-image" id="LinkToDetail">
						<a href="ProductServlet?method=detail&proId=${cart.key.proID }"><img src="${cart.key.picture}" alt="" onmouseover="over(this)" onmouseout="out(this)"></a>
					</div>
					<div class="s-12 m-8 l-9 cart-item-detail">
						<h4>品牌：${cart.key.proName}</h4>
						<p>
						类型： <span>${cart.key.proType} </span><br/>价格：<span>${cart.key.proPrice}</span>
						
						<!-- 用表格布局数量模块 -->
						<table style="">
								<tr>
								<td>数量：</td>
									<td> <a href="CartServlet?method=reduce&proid=${cart.key.proID }"><img src="img/add and substract/subtract.jpg"  style="width:20px; height:20px;"></a></td>
									<td> <input type="text" value=" ${cart.value}"  name="number" style="width:25px; height:20px"></td>
									<td> <a href="CartServlet?method=add&proid=${cart.key.proID } "><img src="img/add and substract/add.jpg" style="width:20px; height:20px" /></a></td>
								</tr>
							</table>
							
						Total： <span class="text-primary">$ ${cart.key.proPrice *cart.value}元</span>
						<table style="padding-right: 20px">
							<tr>
								<td>
									<a href="javascript:deleteProduct('CartServlet?method=delete&proid=${cart.key.proID } ')" >Remove &nbsp;</a></td>
								<td>
									<a href="javascript:share('CartServlet?method=share&proid=${cart.key.proID }')"   onclick="share_to(this)" class="From">Share To>>>&nbsp; &nbsp;</a>
								</td>
								<td>
								<script type="text/javascript">
									(function(){
										var p = {
										url:'http://localhost:8080/Makeup_Forever/cart.jsp', /*获取URL，可加上来自分享到QQ标识，方便统计*/
										desc:'我的分享|商品', /*分享理由(风格应模拟用户对话),支持多分享语随机展现（使用|分隔）*/
										title:'Makeup_Forever', /*分享标题(可选)*/
										summary:'', /*分享摘要(可选)*/
										pics:'', /*分享图片(可选)*/
										flash: '', /*视频地址(可选)*/
										site:'QQ分享', /*分享来源(可选) 如：QQ分享*/
										style:'201',
										width:32,
										height:32
									};
									var s = [];
									for(var i in p){
										s.push(i + '=' + encodeURIComponent(p[i]||''));//将文本字符串编码为一个统一资源标识符 (URI) 的一个有效组件
									}
										//分享给QQ好友API接口
										document.write(['<a class="qcShareQQDiv" href="http://connect.qq.com/widget/shareqq/cart.jsp?',s.join('&'),'" target="_blank">分享到QQ</a>'].join(''));
									})();
							</script>
						<script src="http://connect.qq.com/widget/loader/loader.js" widget="shareqq" charset="utf-8"></script>
								</td>
							</tr>
						</table>
					</div>
					
			</div>
			
			<br>
			
	</c:forEach>
		
		<div style="position:relative;left:600px;top:-10px; font-size:20px;">
			
				<a href="javascript:sum('CartServlet?method=sum&proid=${cart.key.proID}')" id="sum"> 结算</a>&nbsp;&nbsp;
				<a href="javascript:deleteAll('CartServlet?method=deleteAll&proid=${cart.key.proID }')">清空购物车</a>&nbsp;&nbsp;
			
		</div>
		
	</div>
</div>
<!-- PAGE CONTENT END -->
<!-- |||||||||||| page end ||||||||||||| -->
<!-- ||||||||| --> </div> <!-- ||||||||| -->
<!-- |||||||||||| page end ||||||||||||| -->

<!-- jQuery Files -->
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript">
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
 	
 	/* //先设置qq和微信不可见
 	$(document).ready(function(){
 		$(".To").hide();
 	});
 	 */
 	//分享到qq或者微信

 	/* $(document).ready(function(){
 			$(".From").mouseover(function(){
 				$(".To").show();
 			});
 			$(".From").mouseout(function(){
 				$(".To").hide();
 			});
 			
 		}); */
 
 	/*  function share(url){
 		 $(".From").click(function(){
				$(".To").show();
				window.location.href=url;
			}); 
 	 }
 	  */
 //全选
 	$(document).ready(function(){
 		$("#bt1").click(function(){
 			//attr() 方法设置或返回被选元素的属性和值。
 			//当该方法用于返回属性值，则返回第一个匹配元素的值。
 			//当该方法用于设置属性值，则为匹配元素设置一个或多个属性/值对。
 			$("[name='selecting']").attr("checked",'true');
 		});
 	});
//全不选
	$(document).ready(function(){
		$("#bt2").click(function(){
			$("[name='selecting']").removeAttr("checked");//移除所有的属性的值
		});
	});
//反选
	$(document).ready(function(){
		$("#bt3").click(function(){
			$("[name='selecting']").each(function(){
				if($(this).attr("checked")){
					$(this).removeAttr("checked");
				}
				else {
					$(this).attr("checked",'true');
				}
			})
		})
	})

//获取选中的值,在购物车结算 //此功能为结算
function sum(url){
	$(document).ready(function(){
		var str="";
		$("#sum").click(function(){
			if($("[name='selecting'][checked]")){
				$("[name='selecting'][checked]").each(function(){
					str+=$(this).val()+",";
				})
			alert("您当前选中的商品id有："+str); 
			}
			else if($("input[name='selecting']:not(:checked)")){
				alert("请选择您要购买的商品！");
			}
		})
	})
}
</script>
 
</body>
</html>
