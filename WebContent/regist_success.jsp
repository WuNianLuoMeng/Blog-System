<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="USER.*" %>
<%@page import="Server.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%other.msg=null; %>
	<div>
		<span id="NEXT"> </span>
	</div>
</body>
<script>
	function shownum(i) {
		NEXT.innerHTML = i + "秒后自动跳转到登陆界面!";
		if (i == 0)
			window.location.href = 'Login.jsp'; 
		i--;
		if (i >= 0)
			setTimeout("shownum(" + i + ")", 1000); //每隔一秒调用shownum()函数	
	}
	shownum(5); //倒计时5S
</script>
</html>
