<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="USER.*"%>
<%@page import="Server.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/Look_blog.css">
<title>Insert title here</title>
</head>
<body>
	<%
		String Time = new String(request.getParameter("Time").getBytes("ISO-8859-1"), "UTF-8");
		Look_blog x = new Look_blog();
		x.search(Time);
		String date = x.GetDate();
		String title = x.GetTitle();
		String content = x.GetContent();
		String name = x.Getname();
		other.comment_userclass=name;
		other.ID=x.GetID();
		other.date=x.GetDate();
	%>
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
	
		<div class="title-blog" style="padding-top:50px">
			<br> <br> <font class="name"> <%=name + "的博客"%>
			</font>
		</div>
		<div class="list">
			<h1 style="text-align:center">
				<%=title%>
			</h1>
			<p>
				<%=content%>
			</p>
		</div>
		<form action="comment" method="post">
			<div style="padding-left: 300px; padding-top: 20px;">
				<p>评论内容</p>
				<textarea name="content"
					style="font-family: 黑体; margin: 0px; width: 600px; height: 70px; background-color: #efefef; resize: none;"
					id="ts"></textarea>
			</div>
			<div style="padding-top: 20px; padding-left: 830px;">
				<input type="submit" value="提交评论" name="submit">
			</div>
		</form>
		<br>
		<br>
		<br>
	</div>
	
</body>
</html>