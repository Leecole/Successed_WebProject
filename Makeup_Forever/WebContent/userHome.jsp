<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %><!-- EL的函数库=jstl的函数 -->
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Makeup_Forever|修改用户信息</title>
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
<body class="size-1140" style="background-color: pink">
<!-- HEADER START -->
	<%@include file="top.jsp" %><!-- 在此插入统一的top页面 -->
<!-- HEADER END -->
<div style="background-color: pink; position: absolute;left:500px; top:300px;">
	<h2>个人主页</h2>
	<!-- method = "post" enctype = "multipart/form-data"属性，让表单提交的数据以二进制编码的方式提交，在接受此请求的Servlet中用二进制流来获取内容，就可以取得上传文件的内容，从而实现文件的上传。 -->
	
<form method="post" action="UserServlet" enctype="multipart/form-data">
	
	头像：<div style="width:200px; height:200px; border:1px solid red; position:relative;left:40px;top:0px">
			<c:if test="${sessionScope.user ne null}">
					<img src="${sessionScope.user.headImage}" style="width:200px; height:200px">
			</c:if>	
		</div>
	<!-- 文件上传 -->
		<input type="file" name="headImage"  style="position:relative;left:40px;top:0px"/><br/><br/>
		
	编号：<input type="text" name="userid" value="${sessionScope.user.userId}" readonly="readonly" style="background-color: lightgray"/><br/><br/>
	账号：<input type="text" name="username" value="${sessionScope.user.username}"/><br/><br/>
	密码：<input type="password" name="password" value="${sessionScope.user.password}"/><br/><br/>
	昵称：<input type="text" name="nickname" value="${sessionScope.user.nickName}"/><br/><br/>
	邮箱：  <input type="text" name="email" value="${sessionScope.user.email}"/><br/><br/>
	性别：<c:if test="${sessionScope.user.sex eq '男'}">
			<input type="radio" name="sex" checked value="男"/>男
			<input type="radio" name="sex" value="女" />女
		</c:if>
		<c:if test="${sessionScope.user.sex eq '女'}">
			<input type="radio" name="sex"  value="男" />男
			<input type="radio" name="sex"  value="女" checked/>女
		</c:if>
	<br/><br/><br/><br/>
		<input type="submit" value="修改" />&nbsp;&nbsp;&nbsp;
		<input type="reset" value="重置"/>
	
	</form>
</div>
</body>
</html>