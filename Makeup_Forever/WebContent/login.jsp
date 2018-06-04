<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %><!-- EL的函数库=jstl的函数 -->


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Makeup_Forever|Login</title>
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
<body class="size-1140" style=" background-color: pink">
<!-- HEADER START -->
	<%@include file="top.jsp" %><!-- 在此插入统一的top页面 -->
<!-- HEADER END -->

<!-- PAGE CONTENT START -->
<div class="section">
	<div class="line">
		<div class="margin">
			<div class="s-12 m-12 l-8" style="background-color: pink">
			    <div class="padding-m-s-left-50">
				<div class="fullwidth margin-bottom-40">
					<h2>在线发送</h2>
					<hr class="break-small">
					<p id="show" style="color:red;font-size: 20px; font-style: 宋体">欢迎您~${sessionScope.userInfo.nickName}</p>
					
				</div>
				<!-- 该用于显示用户头像 -->
					<div style="border:none;"> 
						<c:if test="${sessionScope.userInfo eq null}">
							<img src="img/headimg/1.jpg" style="width:300px; height:300px;position: absolute;left:760px; top:300px">
						</c:if>
						<c:if test="${sessionScope.userInfo ne null}" >
							<c:if test="${ requestScpoe.uploadUser eq null}">
									<img src="${sessionScope.userInfo.headImage}" style="width:300px; height:300px;position: absolute;left:760px; top:300px"/>
							</c:if>
							<c:if test="${requestScope.uploadUser ne null }">
								<img src="${requestScope.uploadUser.headImage}" style="width:300px; height:300px;position: absolute;left:760px; top:300px"/>
							</c:if>
						</c:if>
						<span style="position: absolute;left:800px; top:600px"><a href="UserServlet?method=search&userid=${sessionScope.userInfo.userId}">我的个人主页</a></span>
					</div>
				<div>
					<!-- <a href="js进度条.html">下载</a> -->
					<br/><br/>
				
					<form  method="post" class="Setstyle"  name="form1" action="UserServlet?method=login" >
						账号：<input type="text" id="username" name="username" />
							<br/><br/>  
						密码：<input type="password" id="password" name="password" />
							<br/><br/>
						<a href="#"><input type="radio" name="remenberMe" value="RemenberPassword"/> 记住密码</a>
								<%for(int i=0;i<20;i++){%>&nbsp;<% } %>
						<a href="#"><input type="radio" name="remenberMe" value="ForgetPassword"/> 忘记密码</a><br/><br/>
							<input type="submit" value="登录" id="login" />
								<%for(int i=0;i<20;i++){%>&nbsp;<% } %>
						<a href="contact-us.jsp"><input type="button" value="注册"></a>
								<%for(int i=0;i<20;i++){%>&nbsp;<% } %>
						<a href="javascript:loginOff('UserServlet?method=loginOff&userid=${sessionScope.userInfo.userId}')">注销登录</a>
						
					</form>	
						
					</div>
			    </div>
			</div>
		</div>
	</div>
</div>
	<!-- jQuery Files -->
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
	<link rel="stylesheet" href="./css/setAlign.css" type="text/css"/>
	
	<c:choose>
			<c:when test="${requestScope.loginMessage eq 'Failed'}">
				<script type="text/javascript">
					alert("登录失败:\r\n用户名和密码错误!");
				</script>
			</c:when>
			<c:when test="${requestScope.userInfo eq 'Successed' }">
				<script type="text/javascript">
					alert("登陆成功！");
				</script>
			</c:when>
			<c:when test="${requestScope.rigesterResult eq 'registerSuccess'}">
				<script type="text/javascript">
					alert("温馨提示:\r\n注册成功!");
				</script>
			</c:when>
			<c:when test="${requestScope.rigesterResult eq 'registerFail'}">
				<script type="text/javascript">
					alert("温馨提示:\r\n注册失败!");
				</script>
			</c:when>
			<c:when test="${requestScope.uploadUser ne null}">
				<script>
					alert("修改成功！");
				</script>
			
			</c:when> 
	</c:choose>
	<script type="text/javascript">
		function loginOff(url){
			var result=window.confirm("您确定注销登录吗？");
			if(result){
				location.href=url;
			}
			
			
		}
	</script>
	
</body>
</html>