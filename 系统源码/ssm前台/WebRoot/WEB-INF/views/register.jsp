<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
 <base href="<%=basePath%>">
	<title>Login</title>
		<meta charset="utf-8">
		<link href="css/style1.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<body>
	 <!-----start-main---->
	 <div class="main">
		<div class="login-form">
			       <h1>会员注册</h1>
					<div class="head">
						<img src="images/user.png" alt=""/>
					</div>
				<form action="<%=request.getContextPath()%>/toregister">
						用户：<input type="text" class="text" name="username"   >
						密码：<input type="password" class="text"  name="password">
						性别：<input type="text" class="text"   name="sex">
						年龄：<input type="text" class="text" name="age" >
						手机：<input type="text" class="text"  name="phone">
						<div class="submit">
							<input type="submit"  value="确定注册" >
					    </div>	
				</form>
			</div>
   					<div class="copy-right">
				<p>Copyright 2019.axuhongbo All rights reserved.</p> 
					</div>
			
	</div>
		
		 		
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='utf-8'></script></div>
</body>
</html>