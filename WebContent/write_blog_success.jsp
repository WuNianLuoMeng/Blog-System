<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="Server.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/write_blog_success.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>write_blog_success</title>
</head>
<body>
	<div class="MAIN">
		<div class="A">
			<p>文章发布成功！</p>
		</div>
		<div class="B">
			<div class="C">
				<input type="button" value="写新文章"
					onclick="window.location = 'Write.jsp';"> <input
					type="button" value="返回主界面" onclick="window.location = 'Main.jsp';">
			</div>
		</div>
	</div>
</body>
</html>