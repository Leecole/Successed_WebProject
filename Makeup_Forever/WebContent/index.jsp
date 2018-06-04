<%@page import="com.Makeup_Forever.Model.Products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Makeup_Forever.DAO.ProductsDAOImp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %><!-- EL的函数库=jstl的函数 -->

<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%><!--在这里加入fmt(格式化、国际化) -->

<!DOCTYPE html>
<c:if test="${empty requestScope.AllProducts}">
	<c:redirect url="ProductServlet?method=index"></c:redirect><!-- 实现运行时，先跳转（经过）到后台ProductServlet.java,并且传参数method=index到后台调用 后台中的index方法，然后再在该后台中转发到此页面--> --%>
</c:if>
<head>
<link rel="shortcut icon" href="favicon.ico" ><%--设置小图标 --%>
	<meta charset="UTF-8">
	<!-- <fmt:setLocale value="ch_CN"/>设置为中文-->
	<fmt:setLocale value="en_US"/><!-- 设置国际化默认的语言为英文 -->
	<fmt:setBundle basename="Language"  var="language"/><!-- 在此查找一个文件名为Language（.properties）开头的文件 -->
		<title><fmt:message key="title_words" bundle="${language}"/></title><!--Makeup-Forever|Home  -->
		
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

<!-- HIDDEN PRODUCTS MENU START -->
<nav id="main-nav">
	<ul>
		<li><a href="products.html" class="hvr-sweep-to-bottom"><span>口红</span></a></li>
		<li><a href="products.html" class="hvr-sweep-to-bottom"><span>粉底液</span></a></li>
		<li><a href="products.html" class="hvr-sweep-to-bottom"><span>精华液</span></a></li>
		<li><a href="products.html" class="hvr-sweep-to-bottom"><span>香水</span></a></li>
	<a href="#0" class="hidden-menu-close">Close<span></span></a>
</nav>
<!-- HIDDEN PRODUCTS MENU END -->

<!-- |||||||||||||||||| page start ||||||||||||||||||| -->
<!-- ||||| --> <div id="page-main-content"> <!-- ||||| -->
<!-- ||||||||||||||||||||||||||||||||||||||||||||||||| -->

<!-- HEADER START -->
<header> 
	<c:import url="top.jsp"></c:import> <!-- 在此插入统一的top页面 -->
</header>
<!-- HEADER END -->

<!-- SLIDESHOW START -->
<div class="carousel-fade-transition owl-carousel carousel-main">
	<!-- slide 1 -->
	<div class="item">
	    <!-- slideshow photo -->
		<div class="image-box">
			<div class="image">
				<img src="img/slideshow/slide1.jpg" alt="" >
			</div>
		</div>
		<!-- slideshow content -->
		<div class="carousel-content">
			<div class="content-center-vertical line">
				<div class="s-12 m-8 l-7">
					<h1 class="margin-bottom-10 animated-carousel-element">We Believe Makeup is Power Never DIM Your Light</h1>
					<p class="margin-bottom-30 animated-carousel-element slow">这是一个两分钟的世界，第一分钟让别人注意到你，第二分钟让别人喜欢你。</p>
					<div class="animated-carousel-element">
						<a href="products.jsp" class="slideshow-btn">Shop Now</a><a href="blog.jsp" class="slideshow-btn2">More Detail</a>
					</div>
				</div>                 
			</div>
		</div>
	</div>
	
	<!-- slide 2 -->
	<div class="item">
	    <!-- slideshow photo -->
	    <div class="image-box">
			<div class="image">
				<img src="img/slideshow/slide1.jpg" alt="">
			</div>
		</div>
		<!-- slideshow content -->
		<div class="carousel-content">
			<div class="content-center-vertical line">
				<div class="s-12 m-8 l-7">
					<h1 class="margin-bottom-10 animated-carousel-element">Invest in Your Skin its Represent You for a Long Time</h1>
					<p class="margin-bottom-30 animated-carousel-element slow">在你的皮肤上投资越多，时光让你精致的越久</p>
					<div class="animated-carousel-element">
						<a href="products.jsp" class="slideshow-btn">Shop Now</a><a href="blog.jsp" class="slideshow-btn2">More Detail</a>
					</div>
				</div>                 
			</div>
		</div>
	</div>
</div>
<!-- SLIDESHOW END -->

<!-- PRODUCTS TAB START -->
<div class="section">
	<div class="line">
	
	  <!-- heading -->
	  <h1 class="text-center"><span class="text-primary">Our </span> Shop</h1>
	  <hr class="break-small break-center">
		<!-- products tabs start -->
		<div class="tabs">
		
			<!-- tab 1 start -->
			
			<div class="tab-item tab-active">
				<a class="tab-label active-btn">All Products</a>
				<div class="tab-content">
					<div class="margin">
					
						<!-- Product 1 -->
					
					<c:forEach var="products" items="${requestScope.AllProducts}">
						<div class="s-12 m-4 l-3 margin-bottom-30">
							<div class="fullwidth">
								<figure class="imghvr-reveal-down">
									<img src="${products.picture}" style="width: 100%;height: 100%" >
									<figcaption>
										<div class="product-hover-content">
											<div class="btn-box">
												<a href="ProductServlet?method=detail&proId=${products.proID}" class="btn">Detail</a><!-- 在此传入参数proId  然后再去后台ProducServlet界面调用detail方法。将此界面传入的数据id读取出来 -->
											</div>
										</div>
									</figcaption>
								</figure>
							</div>
							<div class="fullwidth">
								<h5>${products.proName}</h5>
								<p class="text-center">
									<span><a href="CartServlet?method=addToCart&proid=${products.proID}"><img src="img/cart/cart.jpg" style="width:30px;height:30px;position:relative;left:10px;top:30px;"/></a></span>
									<span class="text-primary">${products.proType}</span> &nbsp;&nbsp; <span class="text-primary"> $ ${products.proPrice}元</span></p>
							
							</div>
						</div>
					</c:forEach>
				
					</div>
				</div>
			</div>
			<!-- tab 1 end -->
			
		</div>
		<!-- products tabs end -->
	</div>
</div>
<!-- PRODUCTS END -->


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
