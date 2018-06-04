<%@page import="com.Makeup_Forever.DAO.ProductsDAOImp"%>
<%@page import="com.Makeup_Forever.Model.Products"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %><!-- EL的函数库=jstl的函数 -->

<!DOCTYPE html>
<html lang="en"> 
<head>
	<meta charset="UTF-8">
	<title>Makeup-Forever|products</title>
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
	<!-- HEADER START -->
		<%@include file="top.jsp" %><!-- 在此插入统一的top页面 -->
	<!-- HEADER END -->

<!-- PAGE CONTENT START -->
<div class="section">
	<!-- heading and description -->
	<div class="line">
	
	
	
	<!-- 模糊匹配搜索框 -->
	<form method="post" action="ProductServlet?method=Search" name="form1">
			<input type="text" name="keywords" id="keywords" style="width:200px; height:40px;position:relative ;left:1000px; top:0px;border:1px solid pink"/>
			<input type="hidden" name="hidden" value="hidden"/>
			<input type="submit" value="搜索" id="search" style="width:60px; height:40px;position:relative;left:990px; top:0px; background-color: pink; border:0px;cursor: pointer"/>
	</form>
	
	  <div class="margin">
		<div class="fullwidth">
		  <h1 class="text-center">Skin Care Products</h1>
		  <p class="text-center">Welcoming To Here</p>
		  <hr class="break-small break-center">
		</div>
	  </div>
	</div>
	
    <!-- products -->
    <div class="line">
		<div class="margin">
   	
    	 <div class="line">
			<div class="margin">
			
		    <!-- product 1 -->
		   <c:forEach var="pro" items="${requestScope.productsBykeywords}">
			<div class="s-12 m-4 l-3 margin-bottom-30">
				<div class="margin">
					<div class="fullwidth">
						<figure class="imghvr-reveal-down">
							<img  src="${pro.picture}" style="width=100%;height=100%;">
							<figcaption>
								<div class="product-hover-content">
									<div class="btn-box">
										<a href="ProductServlet?method=detail&proId=${pro.proID}" class="btn">Buy Now</a>
									</div>
								</div>
							</figcaption>
						</figure>
					</div>
					<div class="fullwidth">
						<h5>${pro.proName}</h5>
						<p><a href="CartServlet?method=addToCart&proid=${pro.proID}"><img src="img/cart/cart.jpg" style="width:30px;height:30px;position:relative;left:15px;top:35px;"/></a></p>
						<p class="text-center"><span  class="text-primary">${pro.proType}</span> &nbsp;&nbsp; <span class="text-primary">$ ${pro.proPrice} 元</span></p>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
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
   
   
   
   
</body>
</html>
