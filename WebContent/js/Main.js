/**
 * 
 */
$().ready(function() {
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
	http_request.open('GET', "init.jsp", true);
	http_request.send(null);

});

function getresult() {
	if (http_request.readyState == 4) {
		if (http_request.status == 200) {
			$("#A").load("init.jsp");
		}
	}
}

function search() {
	var val = $("#keyword").val();
	if (val != "") {
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
		http_request.onreadystatechange = getresult1;
		http_request.open('GET', 'search.jsp?TITLE=' +val, true);
		http_request.send(null);
	}
}
function getresult1() {
	if (http_request.readyState == 4) {
		if (http_request.status == 200) {
			$("#A").load("search.jsp");
		}
	}
}
