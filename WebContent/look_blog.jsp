<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="USER.*"%>
<%@page import="Server.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/Look_blog.css">
<script src="js/jquery-3.3.1.js"></script>
<style>
img {
	width: 100%;
	height:100%;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");		
		Look_blog x = new Look_blog();
		if(!(request.getParameter("Time")==null||request.getParameter("Time")=="")){
			x.search(new String(request.getParameter("Time").getBytes("ISO-8859-1"), "UTF-8"));
			Look_blog.date = x.GetDate()==""?Look_blog.date:x.GetDate();
			Look_blog.title = x.GetTitle()==""?Look_blog.date:x.GetTitle();
			Look_blog.content = x.GetContent()==""?Look_blog.content:x.GetContent();
			other.auther = x.Getname()==""?other.auther:x.Getname();		
			Look_blog.ID=x.GetID();
			other.ID=Look_blog.ID;
			other.date=x.GetDate();
			Comment_msg s=new Comment_msg();
			Comment_msg res[]=s.Return(Look_blog.ID);
			other f=new other();
 			Look_blog.value=f.solve(res,x.Getname());
		}else{
			Comment_msg s=new Comment_msg();
			Comment_msg res[]=s.Return(Look_blog.ID);
			other f=new other();
 			Look_blog.value=f.solve(res,x.Getname());
		}
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
		<div style="padding-top:100px;">
		<div class="list" style="background-color: rgb(255,255,255);background-size: contain|cover;height:auto;width:1000px;">
			<h1 style="text-align:center">
				<%=Look_blog.title%>
			</h1>
			<p>
				<%=Look_blog.content%>
			</p>
		</div>
		<div id="A"
			style="margin-left: 300px; margin-top: 20px; width: 1000px; background-color: rgb(255, 255, 255);">
			<p>评论：</p>
			<%=Look_blog.value %>
		</div>
		</div>		
		<br>
		<br>
		<br>
	</div>
</body>
<script type="text/javascript">
	function f(msg) {
		$("#" + msg).show();
		$("#" + msg).show();
	}
	function solve(USER_name) {
		//alert(USER_name);
		http_request = false;
		if (window.XMLHttpRequest) {
			// alert(value);
			http_request = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			try {
				// alert(value);
				http_request = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
					http_request = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {
					alert(value);
				}
			}
		}
		if (!http_request) {
			alert("不能创建XMLHttpRequest对象实例！");
			return false;
		}
		http_request.onreadystatechange = getresult;
		http_request.open('GET', "reply.jsp?Content="
				+ $("#" + USER_name).val() + "&" + "User_name=" + USER_name,
				true);
		http_request.send(null);
	}
	function getresult() {
		if (http_request.readyState == 4) {
			if (http_request.status == 200) {
				alert("回复成功！");
				window.location = "look_blog.jsp";
			}
		}
	}
</script>
</html>