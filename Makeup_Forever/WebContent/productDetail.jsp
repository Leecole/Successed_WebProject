 <%@page import="com.mysql.fabric.xmlrpc.base.Array"%>
<%@page import="com.Makeup_Forever.Model.Products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Makeup_Forever.DAO.ProductsDAOImp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %><!-- EL的函数库=jstl的函数 -->

<!DOCTYPE html>

<html lang="zxx">
<head>
	<meta charset="UTF-8">
	<title>Makeup-Forever|product</title>
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
	<c:import url="top.jsp"></c:import> <!-- 在此插入统一的top页面 -->
<!-- HEADER END -->

<!-- PRODUCT DETAIL START -->
<div class="section"> 
	<div class="line">
		<div class="margin">
			<!-- product image -->
			
			<div class="s-12 m-4 l-5 margin-bottom">
			<img src="${requestScope.productInfo.picture}" alt="" style="width=100%; height=100%;">
			</div>
			<!-- product detail -->
			
			<div class="s-12 m-8 l-7 padding-l-left">
				<h2 class="text-primary">【专柜正品】${requestScope.productInfo.proName}</h2>
				<p>
					商品介绍:&nbsp;&nbsp;${requestScope.productInfo.proDetails}****** For Charming Girl~~~
				</p>
				<ul class="speciality margin-bottom">
						<li>编号： ${requestScope.productInfo.proID}</li>
						<li>价格：$ &nbsp;${requestScope.productInfo.proPrice} 元</li>
						<li>类型：${requestScope.productInfo.proType}</li>
					</ul>
				<div class="fullwidth margin-bottom-40">
					<div class="numbers-row">
						<label>数量:</label>
						<input type="number" name="quanity" class="quantity" id="french-hens" value="1">
					</div>
				</div>
				<div class="s-12 m-6 l-4">
					<a href="CartServlet?method=addToCart&proid=${requestScope.productInfo.proID}" class="button">加入购物车</a><br/><br/>
					<span>Share To-->>>
						<script type="text/javascript">
									(function(){
										var p = {
										url:'http://192.168.1.115:8080/Makeup_Forever/index.jsp', /*获取URL，可加上来自分享到QQ标识，方便统计*/
										desc:'我喜欢的商品|商品', /*分享理由(风格应模拟用户对话),支持多分享语随机展现（使用|分隔）*/
										title:'Makeup_Forever', /*分享标题(可选)*/
										summary:'', /*分享摘要(可选)*/
										pics:'${requestScope.productInfo.picture}', /*分享图片(可选)*/
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
										document.write(['<a class="qcShareQQDiv" href="http://connect.qq.com/widget/shareqq/index.jsp?',s.join('&'),'" target="_blank">分享到QQ</a>'].join(''));
										//http://connect.qq.com/widget/shareqq/index.html?url=你的分享网址&sharesource=qzone&title=你的分享标题&pics=你的分享图片地址&summary=你的分享描述&desc=你的分享简述
									})();
							</script>
						<script src="http://connect.qq.com/widget/loader/loader.js" widget="shareqq" charset="utf-8"></script>
					</span>
				</div>
			</div>
			
		</div>
	</div>
</div>
<!-- PRODUCT DETAIL END -->

<!-- PRODUCT TAB START -->
<div class="section padding-top-0">
	<div class="line">
		<div class="fullwidth">
			<div class="tabs left">
				<div class="tab-item tab-active">
					<a class="tab-label active-btn">说明</a>
					<div class="tab-content padding-left-10">
						<h3>详情</h3>
						<p>${requestScope.productInfo.proDetails}</p>
						<p>~_~ ~-~祝您购物愉快~_~</p>
					</div>  
				</div>
				
				<div class="tab-item">
					<a class="tab-label">售后</a>        
					<div class="tab-content padding-left-10">
						<h3>特别说明</h3>
						<p class="margin-bottom">售后说明</p>
						<ul class="speciality padding padding-top-0">
							<li>七天无理由退货，全球购除外！</li>
							<li>促销活动：全场满599减100</li>
							<li>售后客服:110-120-119</li>
							<li>商品运输过程中 并非人为的划痕，起雾等，都属于正常现象！！介意慎拍哦~</li>
						</ul>
					</div>  
				</div>
				<div class="tab-item">
					<a class="tab-label">运费 </a>
					<div class="tab-content padding-left-10">
						<h3>运费</h3>
						<p>偏远地区：西藏，新疆，内蒙古——30 元</p>
						<p>其他地区——10元</p>
					</div>  
				</div>
			</div>
		</div>
	</div>
</div>
<!-- PRODUCT TAB END -->
<!-- RELATED PRODUCTS START -->
<div class="section padding-top-0">
	<div class="line">
		<div class="margin">
			<div class="fullwidth margin-bottom-20">
				<h2 class="text-center">相关产品</h2>
				<hr class="break-small break-center">
			</div>
			<!-- product 1 -->
			<div class="s-12 m-4 l-3 margin-bottom-30">
				<div class="margin">
					<div class="fullwidth">
						<figure class="imghvr-reveal-down">
							<img src="img/products/1.png">
							<figcaption>
								<div class="product-hover-content">
									<div class="btn-box">
										<a href="" class="btn">Buy Now</a>
									</div>
								</div>
							</figcaption>
						</figure>
					</div>
					<div class="fullwidth">
						<h5>Lorem Ipsum Elit Dolor</h5>
						<p class="text-center"><span class="strike">$149.00</span> &nbsp;&nbsp; <span class="text-primary">$130.00</span></p>
					</div>
				</div>
			</div>
			
			<!-- product 2 -->
			<div class="s-12 m-4 l-3 margin-bottom-30">
				<div class="margin">
					<div class="fullwidth">
						<figure class="imghvr-reveal-down">
							<img src="img/products/2.png">
							<figcaption>
								<div class="product-hover-content">
									<div class="btn-box">
										<a href="" class="btn">Buy Now</a>
									</div>
								</div>
							</figcaption>
						</figure>
					</div>
					<div class="fullwidth">
						<h5>Lorem Ipsum Elit Dolor</h5>
						<p class="text-center"><span class="strike">$149.00</span> &nbsp;&nbsp; <span class="text-primary">$130.00</span></p>
					</div>
				</div>
			</div>
			
			<!-- product 3 -->
			<div class="s-12 m-4 l-3 margin-bottom-30">
				<div class="margin">
					<div class="fullwidth">
						<figure class="imghvr-reveal-down">
							<img src="img/products/3.png">
							<figcaption>
								<div class="product-hover-content">
									<div class="btn-box">
										<a href="" class="btn">Buy Now</a>
									</div>
								</div>
							</figcaption>
						</figure>
					</div>
					<div class="fullwidth">
						<h5>Lorem Ipsum Elit Dolor</h5>
						<p class="text-center"><span class="strike">$149.00</span> &nbsp;&nbsp; <span class="text-primary">$130.00</span></p>
					</div>
				</div>
			</div>
			
			<!-- product 4 -->
			<div class="s-12 m-4 l-3 margin-bottom-30">
				<div class="margin">
					<div class="fullwidth">
						<figure class="imghvr-reveal-down">
							<img src="img/products/4.png">
							<figcaption>
								<div class="product-hover-content">
									<div class="btn-box">
										<a href="" class="btn">Buy Now</a>
									</div>
								</div>
							</figcaption>
						</figure>
					</div>
					<div class="fullwidth">
						<h5>Lorem Ipsum Elit Dolor</h5>
						<p class="text-center"><span class="strike">$149.00</span> &nbsp;&nbsp; <span class="text-primary">$130.00</span></p>
					</div>
				</div>
		</div>
			
		</div>
	</div>
</div>
<!-- RELATED PRODUCTS END -->

<!-- |||||||||||| page end ||||||||||||| -->
<!-- ||||||||| --> </div> <!-- ||||||||| -->
<!-- |||||||||||| page end ||||||||||||| -->

<!-- jQuery Files -->
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
   
   
   
   
</body>
</html>
