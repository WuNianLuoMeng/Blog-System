<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="USER.*"%>
<%@page import="Server.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/edit_blog.css">
<link rel="stylesheet" href="utf8-jsp/themes/default/css/ueditor.css">
<script type="text/javascript" charset="utf-8"
	src=" utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src=" utf8-jsp/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src=" utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<script src="js/jquery-3.3.1.js"></script>
<title>Insert title here</title>
</head>
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
		
		<div class="list" style="padding-left:400px;padding-top:60px">
			<%
				String Time = new String(request.getParameter("Time").getBytes("ISO-8859-1"), "UTF-8");
				Look_blog x = new Look_blog();
				x.search(Time);
				String date = x.GetDate();
				String title = x.GetTitle();
				String content = x.GetContent();
			%>
			
			<form action="edit" method="post">
				<p>
					博客标题
				</p>
				<div class="Biaoti">
					<input type="text" name="title" maxlength="50" class="Input_Biaoti"
						id="Input_Biaoti" style="width: 800px;" value="<%=title %>">
				</div>
				<p>
					博客内容
				</p>
				<div id="test-editormd" class="test-edit">
					<script name="content" id="editor" type="text/plain"
						style="width:800px;height:300px;"><%=content%></script>
				</div>
				<div>
					<input type="hidden" name="Date" value="<%=date%>">
				</div>
				<div class="B" style="padding-top: 30px;padding-left: 100px;">
					<div class="C">
					<input style="background: #FC3;width: 100px;height: 36px;margin-top: 60px;margin-left: 20px;border-radius: 30px;"type="submit" value="确认修改" name="submit"> 
					<input style="background: #FC3;width: 100px;height: 36px;margin-top: 60px;margin-left: 20px;border-radius: 30px;"type="button" onclick="window.location = 'Main.jsp';" value="取消">
					</div>
				</div>				
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，
    //直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
</script>
</html>