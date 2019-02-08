<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="USER.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@page import="Server.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete_blog</title>
</head>
<body>
<%
		request.setCharacterEncoding("UTF-8");
		String time=request.getParameter("Time");
		String a[]=time.split("/");
		String Time=a[0]+" "+a[1];
		Delete_Blog x=new Delete_Blog();
		int row=x.Delete(Time);
		if(row>0)
		{
			request.setAttribute("UserName",register.USERNAME);
			request.getRequestDispatcher("Main.jsp").forward(request, response);
		}
		else
		{
			
		}
%>
</body>
</html>