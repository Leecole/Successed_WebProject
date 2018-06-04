<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %><!-- EL的函数库=jstl的函数 -->
<!-- HEADER START -->
<header> 
	<!-- top bar start -->
	<div id="topbar" class="background-primary">
		<div class="line">
		    <!-- social icons -->
			<div class="s-12 m-12 l-6">
				<ul>
				  <li><a href="#">官网：http://www.Leecole.top</a></li>
				</ul>
			</div>
			<!-- contact details -->
			<div class="l-6 hide-s hide-m">
				<div class="right">
					<ul class="topbar-menu">
						<li><a href="contact-us.jsp">注册</a></li>
						<li><a href="#">欢迎您~ ${sessionScope.userInfo.nickName}</a></li>
						<li><a href="login.jsp">登录</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- top bar end -->
	
	<!-- navigation and logo -->
	<nav class="background-dark">
		<div class="line">
		    <!-- logo -->
			<div class="s-12 l-3">
				<div class="fullwidth">
				    <a href="index.jsp" class="logo"><img src="img/logo.png" alt=""></a>
				</div>
			</div>
			
			<!-- navigation -->
			<div class="top-nav s-12 m-12 l-9">
				<a class="nav-text"></a>
				<ul class="right chevron">
					<li><a href="index.jsp">主页</a></li>
					<li><a href="about-us.jsp">关于我们</a></li>
					<li><a href="contact-us.jsp">注册 or 联系我们</a></li>
					<li><a href="products.jsp">商品列表</a></li>
					<li><a href="cart.jsp">购物车</a></li>
					<li><a href="blog.jsp">博客</a></li>
				</ul>
			</div>
			
		</div>
	</nav>
</header>
<!-- HEADER END -->