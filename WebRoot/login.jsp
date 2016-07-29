<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<title>登录页面</title> 
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/login.css" />
     
<script type="text/javascript">
$(function(){
	//得到焦点
	$("#password").focus(function(){
		$("#left_hand").animate({
			left: "150",
			top: " -38"
		},{step: function(){
			if(parseInt($("#left_hand").css("left"))>140){
				$("#left_hand").attr("class","left_hand");
			}
		}}, 2000);
		$("#right_hand").animate({
			right: "-64",
			top: "-38px"
		},{step: function(){
			if(parseInt($("#right_hand").css("right"))> -70){
				$("#right_hand").attr("class","right_hand");
			}
		}}, 2000);
	});
	//失去焦点
	$("#password").blur(function(){
	$("#left_hand").attr("class","initial_left_hand");
	$("#left_hand").attr("style","left:100px;top:-12px;");
	$("#right_hand").attr("class","initial_right_hand");
	$("#right_hand").attr("style","right:-112px;top:-12px");
	});
});
</script>

</head>
<body>
<div class="top_div">
</div>
<div style="background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 200px; text-align: center;">
	<div style="width: 165px; height: 96px; position: absolute;">
		<div class="tou">
		</div>
		<div class="initial_left_hand" id="left_hand">
		</div>
		<div class="initial_right_hand" id="right_hand">
		</div>
	</div>
	<form action="Login.action" method="post">
	<p style="padding: 30px 0px 10px; position: relative;">
		<span class="u_logo"></span><input class="ipt" name="username" id="username" type="text" placeholder="请输入用户名或邮箱" value="">
	</p>
	<p style="position: relative;">
		<span class="p_logo"></span>
		<input class="ipt" id="password" name="password" type="password" placeholder="请输入密码" value="">
	</p>
	<div style="height: 50px; line-height: 50px; margin-top: 30px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
		<p style="margin: 0px 35px 20px 45px;">
			<span style="float: left;"><a style="color: rgb(204, 204, 204);" href="#">忘记密码?</a></span>
			<span style="float: right;">
			<input type="submit" style="background: rgb(0, 142, 173); padding: 7px 10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold;" href="" value="登陆" />
			</span>
		</p>
	</div>
	</form>
</div>
<div style="text-align:center;">
</div>
</body>
</html>