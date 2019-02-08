<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="USER.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="Server.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;chatset=utf-8");
		response.setCharacterEncoding("utf-8");
		if(register.flag==0){
			register.U =new String(request.getParameter("TITLE").getBytes("iso-8859-1"),"utf-8");
			register.flag++;
		}else{
			register.flag=0;
		}
		if (register.U != null && register.U != "") {
			paixu f=new paixu();
			PrintWriter Out = response.getWriter();
			Search_blog x = new Search_blog();
			blog Blog[] = x.Search();
			int len = x.Getsum();
			SORT res[]=f.solve(Blog,register.U,len);			
			String text = "";
			int sum=0;
			for (int i = 0; i < len; i++) {
				if (res[i].getNum() == 0) {
					break;
				}
				sum++;
				blog BLOG = res[i].getBLOG();
				String s = BLOG.getBlog_date();
				String a[] = s.split(" ");
				text += "<div class=" + "\"" + "blog_list" + "\"" + " style=" + "\"" + "width:900px;"
						+ "margin-bottom:" + "1px;" + "background-color:rgba(255,255,255,0.7);" + "\""
						+ "id=Blog_list" + ">" + "<h4>" + "<a style="+"\""+"text-decoration:none"+"\""+"href=" + "\"" + "look_blog.jsp" + "?" + "Time=" + a[0]
						+ "/" + a[1] + "\"" + ">" + BLOG.getTitle() + "</a>" + "</h4>" + "<p id" + "=" + "\"" + "time" + "\"" + ">" + BLOG.getBlog_date()
						+ "<a style="+"\""+"text-decoration:none"+"\""+"href=" + "\"" + "edit_blog.jsp" + "?" + "Time=" + a[0] + "/" + a[1] + "\"" + " style="
						+ "\"" + "margin-left:10px;" + "\"" + "class" + "=" + "\"" + "edit_msg" + "\"" + ">" + "编辑"
						+ "</a>" + "<button" + " style=" + "margin-left:10px;border:none;background-color:transparent;" + " class" + "=" + "\""
						+ "delete_msg" + "\"" + "onclick=" + "Delete(" + "\"" + a[0] + "/" + a[1] + "\"" + ")" + ">"
						+ "删除" + "</button>" + "</p>" + "</div>";
			}
			if(sum==0){
				text += "<div class=" + "\"" + "blog_list" + "\"" + " style=" + "\"" + "width:900px;"
						+ "margin-bottom:" + "1px;" + "background-color:rgba(255,255,255,0.7);" + "\""
						+ "id=Blog_list" + ">"+"<p style="+"\""+" font-size:40px;letter-spacing:20px;"+"\""+">"+"无博客信息！"+"</p>"+"</div>";
			}
			Out.println(text);
			response.getWriter().flush();
			response.getWriter().close();			
		} else {
			return;
		}
	%>
</body>
</html>