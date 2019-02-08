/**
 * 
 */
/**
 * 
 */
function namecheck() {
	// debugger;
	var val = $("#Username").val();
	// alert(val);
	if (val == "") {
		$("#nameMsg").text("用户名不能为空！").show();
	} else if (!val.match(/^[\u4E00-\u9FA5]{1,}$/)) {
		$("#nameMsg").text("请注意姓名格式！").show();
	} else {
		$("#nameMsg").text("").show();
	}

	// Ajax
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
		http_request.onreadystatechange = getresult;
		http_request.open('GET', "judge_username.jsp?USER_name="
				+ Username.value, true);
		http_request.send(null);
	}
}
function getresult() {
	if (http_request.readyState == 4) {
		if (http_request.status == 200) {
			if(http_request.responseText!="")
				$("#nameMsg").text(http_request.responseText).show();
		}
	}
}
function Passqordcheck() {
	// debugger;
	var val = $("#Password").val();
	// alert(val);
	if (val == "") {
		$("#PasswordMsg").text("密码不能为空！").show();
	} else {
		$("#PasswordMsg").text("").show();
	}
}
function judge_form() {	
	var BOOL = 0;
	var val = $("#nameMsg").text();
	if (val != "" || $("#Username").val() == "")
		BOOL = 1;

	val = $("#PasswordMsg").text();
	if (val != "" || $("#Password").val() == "")
		BOOL = 1;
	var form = document.getElementById("Form");
	if (BOOL == 0) {
		return true;
	}
	return false;
}