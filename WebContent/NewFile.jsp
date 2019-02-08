<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <script type="text/javascript" charset="utf-8" src=" utf8-jsp/ueditor.config.js"></script>
  <script type="text/javascript" charset="utf-8" src=" utf8-jsp/ueditor.all.min.js"> </script>
  <script type="text/javascript" charset="utf-8" src=" utf8-jsp/lang/zh-cn/zh-cn.js"></script>
    <link rel="stylesheet" href="utf8-jsp/themes/default/css/ueditor.css">
</head>
<body>
	<form action="ceshi" method="post" name="upfile">
		<script name="T" id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
		<input type="submit" value="确认提交">
	</form>
</body>
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，
    //直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
</script>
</html>