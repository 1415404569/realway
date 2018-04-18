<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$("#kaptchaImage").click(function(){
		 $(this).attr('src', 'Kaptcha.jpg?' + Math.floor(Math.random() * 100));
	})
	$("#btn").click(function(){
		$.post("loginUser.action",{
			"user.username":$("#username").val(),
			"user.password":$("#password").val(),
			"code":$("#code").val()
			},
			function(data){
				console.log(data);
			})
		})
	}) 
</script>
</head>
<body>
	<form>
		<p>用户名：<input type="text" name="user.username" id="username"/></p>
		<p>密码：<input type="password" name="user.password" id="password"/></p>
		<p>验证码：<input type="text" name="code" id="code"/><img src="Kaptcha.jpg" id="kaptchaImage" >换一张</p>
		<p><input type="button" value="登陆" id="btn"></p>		
	</form>
</body>
</html>