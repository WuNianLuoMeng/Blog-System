/**
 * 
 */
function Delete(time) {
	var flog = confirm("确定要删除这篇博客吗？");
	if (flog == true) {
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
		http_request.open('GET', "Delete_blog.jsp?Time=" + time, true);
		http_request.send(null);
	}
}

