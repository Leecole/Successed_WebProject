<%@page import="com.Makeup_Forever.DAO.ProductsDAOImp"%>
<%@page import="com.Makeup_Forever.Model.Products"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Makeup-Forever|Contact-us</title>
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
  
<body class="size-1140" style="background:white">

<!-- |||||||||||||||||| page start ||||||||||||||||||| -->
<!-- ||||| --> <div id="page-main-content"> <!-- ||||| -->
<!-- ||||||||||||||||||||||||||||||||||||||||||||||||| -->

<!-- HEADER START -->
	<%@include file="top.jsp" %><!-- 在此插入统一的top页面 -->
<!-- HEADER END -->

<!-- PAGE CONTENT START -->
	 
<div class="section">
	<div class="line">
		<div class="margin">
			<div class="s-12 m-12 l-4 margin-bottom-30"style="background-color: pink;height:545px">
				<div class="fullwidth margin-bottom-40" >
					<h2>联系我们</h2>
					<hr class="break-small">
					<p>若您需要，请根据以下联系方式联系我们~_~</p>
				</div>
				<div class="fullwidth margin-bottom-50">
					<div class="float-left">
						<i class="fa fa-home text-white background-primary icon-square-small"></i>
					</div>
					<div class="margin-left-100">
						<h4 class="text-primary">地址</h4>
						<p>
						湖北省 襄阳市 Street 7<br />
						微博: Charming-Leecole
						</p>               
					</div>
				</div>
				<div class="fullwidth margin-bottom-50">
					<div class="float-left">
						<i class="fa fa-phone icon-square-small"></i>
					</div>
					<div class="margin-left-100">
						<h4 class="text-primary">电话</h4>
						<p>
						0000 1234 567 89<br />
						1111 2314 567 00
						</p>             
					</div>
				</div>
				<div class="fullwidth margin-m-bottom-60">
					<div class="float-left">
						<i class="fa fa-envelope text-white background-primary icon-square-small"></i>
					</div>
					<div class="margin-left-100">
						<h4 class="text-primary">邮箱</h4>
						<p>
						12345678@qq.com<br />
						12121212@sina.com
						</p>              
					</div>
				</div>
			</div>
			<div class="s-12 m-12 l-8">
			    <div class="padding-m-s-left-50" style="background-color: pink; ">
				<div class="fullwidth margin-bottom-40">
					<h2>在线发送</h2>
					<hr class="break-small">
					<p>请小仙女儿认真填写如下信息，方便我们之间的沟通哟~~</p>
				</div>
					<div>
					<form  method="post" action="UserServlet?method=rigister" onSubmit="fun()" name="register" class="Setstyle" >
						默认头像：<div style="width:150px; height:150px; position:relative;left:70px; top:-40px;">
							<img src="img/headimg/1.jpg" style="width:150px; height:150px" name="image">
						</div>
						账号：<input type="text" id="username" name="username" value="" />
						<br/><br/>  
						昵称：<input type="text" name="nickname" value=""/><br/>
							<br/>
							
						密码：<input type="password" id="password" name="password" value="">
							<br/>
							<br/>
					 	性别：
					 		<input type="radio" name="sex" value="男" checked="true"/>男
						 	<input type="radio" name="sex" value="女"/>女<br/><br/>
						邮箱：<input type="email" name="email" id="email" value="" />
						<span id="emInfo">
							示例：1903502727@qq.com
						</span><br/>
						<br/>
						<br/>
							<input type="submit" value="提交" id="tijiao" />&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="重置">&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="login.jsp" style="color:white; text-decoration: none; font-size: 18px">跳转到登陆</a>
					</form>			
					</div>
					
			    </div>
			</div>
		</div>
	</div>
</div>
<!-- PAGE CONTENT END -->



<!-- BLOG AND FOLLOW US START -->
<div class="section padding-top-0"> 
	<div class="line">
		<div class="margin">
			<!-- about us block 1 -->
			<div class="s-12 m-12 l-4 margin-m-bottom-60">
				<div class="fullwidth margin-bottom">
					<a href="" class="image-hover-zoom">
					    <img src="img/jh/Lancome1.jpg" alt=""  style="width:100%; height:100%">
					</a>
				</div>
				<div class="fullwidth">
					<h3>熬夜不可怕，谁丑谁尴尬~</h3>
					<p>脸蛋是天生的，气质是靠自己养成的</p>
			    </div>
			</div>
			<!-- about us block 2 -->
			<div class="s-12 m-12 l-4">
				<div class="fullwidth margin-bottom">
				    <a href="" class="image-hover-zoom">
					    <img src="img/kh/ysl4.jpg" alt=""  style="width:100%; height:100%">
					</a>
				</div>
				<div class="fullwidth">
					<h3>女孩子必不可少的口红之一</h3>
					<p>再忙也要做个精致的女孩儿~</p>
			    </div>
			</div>
			
			<!-- about us block 3 -->
			<div class="s-12 m-12 l-4">
				<div class="fullwidth margin-bottom">
				    <a href="" class="image-hover-zoom">
					    <img src="img/xs/C2.jpg" alt="" >
					</a>
				</div>
				<div class="fullwidth">
					<h3>香水是一种浪漫的邂逅~</h3>
					<p>本姑娘还没开始用香水，就不在这里瞎说了~_~</p>
			    </div>
			</div>
		</div>
	</div>
</div>
<!-- BLOG AND FOLLOW US END -->

<!-- FOOTER START -->
	<%@include file="bottom.jsp" %>
<!-- FOOTER END -->




<!-- |||||||||||| page end ||||||||||||| -->
<!-- ||||||||| --> </div> <!-- ||||||||| -->
<!-- |||||||||||| page end ||||||||||||| -->

<!-- jQuery Files -->
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>

	
   
</body>
</html>
