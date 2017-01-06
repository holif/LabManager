<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>view/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>view/css/main.css"/>
    <script type="text/javascript" src="<%=basePath%>view/js/modernizr.min.js"></script>
</head>
<body>
<%
	
	if(request.getSession().getAttribute("uname")==null){
		response.sendRedirect(basePath+"login.jsp"); 
	}
	String ps = request.getSession().getAttribute("ps").toString();
	request.setAttribute("ps",ps); 
 %>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
    </div>
</div>
<div class="container clearfix">
	<%@ include file="sidebar.jsp" %>

    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="#">首页</a></div>
        </div><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<h1><center><span style="font-weight:500;color:#BBB;font-size:24pt;">实验室设备管理系统</span></center></h1>
    </div>
    <!--/main-->
</div>
</body>
</html>