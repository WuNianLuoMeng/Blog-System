<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Server.*"%>
<%@page import="USER.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/Write.css">
<script type="text/javascript" charset="utf-8"
	src=" utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src=" utf8-jsp/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src=" utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<script src="js/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="utf8-jsp/themes/default/css/ueditor.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Write</title>
<link rel="stylesheet" href="css/editormd.css" />
<script src="js/editormd.js"></script>
</head>
<body>
	<div class="Main">
		<div class="menu">
			<ul style="list-style: none">
				<li><a href="All_Blog.jsp">博客乐园</a> <a href="Write.jsp">写博客</a>
					<a href="guanyu.jsp">关于</a> &nbsp&nbsp&nbsp&nbsp&nbsp
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
					&nbsp&nbsp&nbsp&nbsp&nbsp <a href="Main.jsp"><%=other.username %></a>
					</a><a href="Login.jsp">退出</a></li>
			</ul>
		</div>
		<form action="write" method="post">
		<div style="padding-top: 80px; padding-left: 300px">			
				<div class="Biaoti">
					<input type="text" name="title" maxlength="100" class="Input_Biaoti"
						id="Input_Biaoti" style="width:800px;" placeholder="文章标题">
				</div>
		</div>
		<div style="padding-left: 300px">
				<div id="test-editormd" class="test-edit">
					<script name="content" id="editor" type="text/plain"
						style="width:800px;height:300px;"></script>
				</div>
				<div class="Button">
					<input type="submit" value="发布博客" name="submit"> <input
						type="button" onclick="" value="返回">
				</div>
		</div>
		</form>
		<br> <br> <br>
	</div>
</body>
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，
    //直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
</script>
</html>