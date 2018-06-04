<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %><!-- EL的函数库=jstl的函数 -->
    
<!DOCTYPE html>
<html lang="zxx">
<head>
	<meta charset="UTF-8">
	<title>Makeup-Forever|about-us</title>
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
<c:import url="top.jsp"></c:import> <!-- 在此插入统一的top页面 -->

<!-- PAGE CONTENT START -->
<div class="section"> 
	<div class="line">
		<div class="margin">
			<!-- left side -->
			<div class="s-12 m-12 l-4">
				<div class="fullwidth margin-bottom-60">
					<img src="img/bg5.jpg" alt="">
				</div>
				<div class="fullwidth hide-s hide-m">
					<h3>Follow us</h3>
					<p class="margin-bottom">您可以通过以下方式来联系我们...</p>
					<div class="fullwidth">
					<table width="300px" height="200px" >
						<tr>
							<td><a href="http://www.qq.com"><img src="img/share/qq.jpg" style="height:100px;width:100px;" ></a></td>
							<td><a href="https://weixin.qq.com/"><img src="img/share/WeChat.jpg" style="height:100px;width:100px;" ></a></td>
							<td><a href="https://weibo.com/"><img src="img/share/weibo.png" style="height:100px;width:100px;" ></a></td>
						</tr>
						<tr>
							<td >
								<a href="#"><img src="img/share/facebook.jpg" style="height:100px;width:100px;" ></a>
							</td>
							<td><a href="#"><img src="img/share/twitter.jpg" style="height:100px;width:100px;" ></a></td>
							<td><a href="#"><img src="img/share/pinterest.jpeg" style="height:100px;width:100px;" ></a></td>
						</tr>
					</table>
					</div>
				</div>
			</div>
			<!-- right side -->
			<div class="s-12 m-12 l-8 padding-l-left-40">
			  <h1>About Us</h1>
	          <hr class="break-small">
			    <div class="fullwidth margin-bottom-60">
				  <p>Lorem ipsum dolor sit amet consectetur adipiscing elit nunc faucibus aliquet quam vel pellentesque curabitur quis risus id tellus pharetra lobortis. Sed dignissim quam et dictum congue erat orci imperdiet quam ut congue odio quam ut ligula ut vestibulum, elit ut vestibulum placerat enim diam consectetur ex eu suscipit mauris enim sit amet arcu morbi euismod est ac tellus condimentum nec finibus sem viverra sed quis quam sagitti convallis velit quis fermentum turpis morbi posuere orci sed mollis amet consectetur adipiscing elit nunc.</p>
				</div>
				<div class="fullwidth margin-bottom-60">
					<div class="float-left">
						<i class="fa fa-paper-plane-o fa-3x text-primary"></i>
					</div>
					<div class="margin-left-70">
						<h3>Our vision</h3>
						<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat iriure vulputate autem vel eum duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat autem vel eum iriure dolor in hendrerit in vulputate velit.</p>
						<!--<a class="text-more-info text-primary-hover" href="">Read more</a>-->               
					</div>
				</div>
				<div class="fullwidth margin-bottom-60">
					<div class="float-left">
						<i class="fa fa-eye fa-3x text-primary"></i>
					</div>
					<div class="margin-left-70">
						<h3>Our mission</h3>
						<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat iriure vulputate autem vel eum duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie autem vel eum iriure dolor in hendrerit in vulputate velit.</p>
						<!--<a class="text-more-info text-primary-hover" href="">Read more</a>-->               
					</div>
				</div>
				<div class="fullwidth margin-bottom-60">
					<div class="float-left">
						<i class="fa fa-diamond fa-3x text-primary"></i>
					</div>
					<div class="margin-left-70">
						<h3>Behind the brand</h3>
						<p>Duis autem vel eum iriure dolor in in velit esse molestie iriure autem vel eum duis vel eum dolor in hendrerit in vulputate velit esse molestie consequat.</p>
						<!--<a class="text-more-info text-primary-hover" href="">Read more</a>-->               
					</div>
				</div>
				<div class="fullwidth margin-bottom-60">
					<div class="float-left">
						<i class="fa fa-calendar fa-3x text-primary"></i>
					</div>
					<div class="margin-left-70">
						<h3>Our history begins</h3>
						<p>Duis autem vel eum iriure dolor in in velit esse iriure autem vel eum duis vel eum dolor in hendrerit in vulputate velit esse molestie consequat.</p>
						<!--<a class="text-more-info text-primary-hover" href="">Read more</a>-->               
					</div>
				</div>
				<div class="fullwidth margin-bottom-60">
					<div class="float-left">
						<i class="fa fa-heart-o fa-3x text-primary"></i>
					</div>
					<div class="margin-left-70">
						<h3>Our products</h3>
						<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat iriure vulputate autem vel eum duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat autem eum iriure dolor in hendrerit in vulputate velit.</p>
						<!--<a class="text-more-info text-primary-hover" href="">Read more</a>-->               
					</div>
				</div>
				<div class="fullwidth margin-m-bottom-60">
					<div class="float-left">
						<i class="fa fa-question-circle-o fa-3x text-primary"></i>
					</div>
					<div class="margin-left-70">
						<h3>Why us?</h3>
						<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat iriure vulputate autem vel eum duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie autem vel eum iriure in hendrerit in vulputate velit.</p>
						<!--<a class="text-more-info text-primary-hover" href="">Read more</a>-->               
					</div>
				</div>
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
