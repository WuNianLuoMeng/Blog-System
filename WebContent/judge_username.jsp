<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="USER.register"  %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@page import="Server.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String User=new String(request.getParameter("USER_name").getBytes("ISO-8859-1"),"UTF-8");
	PrintWriter Out=response.getWriter();
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/USER?useSSL=FALSE&serverTimezone=UTC";
		String username="root";
		String password="981014";
		Connection conn=DriverManager.getConnection(url, username, password);
		String sql="select * from userinfo";
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		boolean flog=false;
		while(rs.next()) {
			register x=new register();
			x.setUsername(rs.getString("name"));
			x.setPassword(rs.getString("password"));
			if(x.getUsername().equals(User)){
				flog=true;
				break;					
			}			
		}
		if(flog==true) {
			Out.println("该用户名已存在！");
		}
	}catch(Exception e)	{
		e.printStackTrace();
	}	
	response.getWriter().flush();
	response.getWriter().close();
%>
</body>
</html>