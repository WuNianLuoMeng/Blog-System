<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="USER.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="Server.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		PrintWriter Out=response.getWriter();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");	
		Comment_msg msg=new Comment_msg();
		other.comment_userclass=new String(request.getParameter("User_name").getBytes("ISO-8859-1"),"UTF-8");
		msg.setDate(other.date);
		msg.setID(other.ID);
		msg.setComment_name(other.username);
		msg.setContent(new String(request.getParameter("Content").getBytes("ISO-8859-1"),"UTF-8"));				
		msg.setStaus(1);
		int row=msg.submit(msg);
		if(row>0){
			Out.println("true");
			response.getWriter().flush();
			response.getWriter().close();
		}		
	%>
</body>
</html>