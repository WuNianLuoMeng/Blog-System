<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="USER.*" %>
<%@page import="Server.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery-3.3.1.js"></script>
<title>登陆界面</title>
<link rel="stylesheet" href="css/Login.css">
</head>
<body>
	<div class="MAIN">
	<form action="login" method="post">
		<div class="title">
			<p>个人博客系统</p>
		</div>
		<div class="css_main">
			<div class="css_input_name">
				<span class="css_username">用户名:</span> 
					<input type="text" class="css_u_input" name="username" id="Username" onblur="namecheck()" />
					<div class="error" id="nameMsg" style="display: none;"></div>
			</div>
			<div class="css_input_password">
				<span>密 码:</span> 
					<input type="password" class="css_p_input" name="password" id="Password" onblur="Passqordcheck()" />
					<div class="error" id="PasswordMsg" style="display: none;"></div>
				<div class="error1">
				 	<font color="red">
				 		<%=other.msg == null ? "" : other.msg%>
				 	</font>
				</div>
			</div>
			<div class="Submit">
				<input type="submit" class="LOGIN" name="submit" value="登陆" />
				<input type="button" class="SUBMIT" name="register" onclick="window.location = 'Regist.jsp';" value="注册" />
			</div>
		</div>
	</form>
	</div>
</body>
<script src="js/Login.js">
</script>
</html>