<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="USER.*"%>
<%@page import="Server.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/jquery-3.3.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主界面</title>
<link rel="stylesheet" href="css/Main.css">
</head>
<style>
img {
	width: 100%;
	height:auto;
}
</style>
<body>
	<div class="MAIN">
		<div class="menu">
			<ul style="list-style: none">
				<li>
					<a href="All_Blog.jsp">博客乐园</a> 
				 	<a href="Write.jsp">写博客</a>
					<a href="guanyu.jsp">关于</a>
					&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
					<a href="Main.jsp"><%=other.username %></a>
				</a><a href="Login.jsp">退出</a></li>
			</ul>
		</div>
		<div  style="padding-top:80px">
			<div class="title">
			<ul class="Btns">
				<div class="Search">
					<input type="text" class="input_search" name="input_search"
						id="keyword" autocomplete="off"placeholder="搜博主文章" >
					<input type="button" value="搜索" onclick="search()">
				</div>
			</ul>
		</div>
		<div class="A" id="A"></div>
		<%
			register.U=null;
		%>
		</div>
		<br>
		<br>
		<br>
	</div>
</body>
<script src="js/Main.js">
</script>
<script src="js/init.js">
</script>
</html>