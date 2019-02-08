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