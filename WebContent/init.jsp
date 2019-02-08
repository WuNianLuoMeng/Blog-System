<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="USER.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@page import="Server.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.js"></script>
<style>
button{
	border:none;
	background-color:transparent;
}
</style>
</head>
<body>
<%
	init_blog x=new init_blog();
	register y=new register();
	blog BLOG[]=x.judge(y);
	PrintWriter Out=response.getWriter();
	int len=BLOG.length;
	String text="";
	for(int i=0;i<len;i++)
	{
		String s=BLOG[i].getBlog_date();
		String a[]=s.split(" ");
		text+=
		"<div class="+"\""+"blog_list"+"\""+" style="+"\""+"width:900px;"+"margin-bottom:"+"1px;"+"background-color:rgba(255,255,255,0.7);"+"\""+"id=Blog_list"+">"+
			"<h4>"+
				"<a style="+"\""+"text-decoration:none"+"\""+"href="+"\""+"look_blog.jsp"+"?"+"Time="+a[0]+"/"+a[1]+"\""+">"+BLOG[i].getTitle()+
				"</a>"+
			"</h4>"+
// 			"<div"+" style="+"\""+"width:400px; height:400px;"+"\""+">"+
// 			"<p>"+
// 				"<a style="+"\""+"text-decoration:none"+"\""+"href="+"\""+"look_blog.jsp"+"?"+"Time="+a[0]+"/"+a[1]+"\""+">"+BLOG[i].getContent()+
// 				"</a>"+
// 			"</p>"+
// 			"</div>"+
			"<p id"+"="+"\""+"time"+"\""+">"+
				BLOG[i].getBlog_date()+
				"<a style="+"\""+"text-decoration:none"+"\""+"href="+"\""+"edit_blog.jsp"+"?"+"Time="+a[0]+"/"+a[1]+"\""+" style="+"\""+"margin-left:10px;"+"\""+"class"+"="+"\""+"edit_msg"+"\""+">"+"编辑"+
				"</a>"+
				"<button"+" style="+"margin-left:10px;border:none;background-color:transparent;"+" class"+"="+"\""+"delete_msg"+"\""+"onclick="+"Delete("+"\""+a[0]+"/"+a[1]+"\""+")"+">"+"删除"+
				"</button>"+
			"</p>"+
		"</div>";
	}
	if(len==0){
		text += "<div class=" + "\"" + "blog_list" + "\"" + " style=" + "\"" + "width:900px;"
				+ "margin-bottom:" + "1px;" + "background-color:rgba(255,255,255,0.7);" + "\""
				+ "id=Blog_list" + ">"+"<p style="+"\""+" font-size:40px;letter-spacing:20px;"+"\""+">"+"该博主很懒，什么也没有写！"+"</p>"+"</div>";
	}
	Out.println(text);
	response.getWriter().flush();
	response.getWriter().close();
%>
</body>
<script src="js/init.js">
</script>
</html>