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
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
           <ul class="sidebar-list">
				<li>
                    <a href="<%=basePath%>SelectDevice.action"><i class="icon-font">&#xe018;</i>设备查询</a>
                    
                </li>
				<li>
                    <a href=""><i class="icon-font">&#xe005;</i>购买申请</a>
                    <ul class="sub-menu">
                    	<c:if test="${requestScope.ps=='1'}">
                    	<li><a href="<%=basePath%>SelectBuy!buyReview.action"><i class="icon-font">&#xe005;</i>申请审批</a></li>
                    	</c:if>
                    	<c:if test="${requestScope.ps=='0'}">
                    	<li><a href="<%=basePath%>view/buy.jsp"><i class="icon-font">&#xe005;</i>购买申请</a></li>
                    	</c:if>
                    	<li><a href="<%=basePath%>SelectBuy.action"><i class="icon-font">&#xe005;</i>申请记录</a></li>
                    </ul>
                    
                </li>
                <li>
                    <a href=""><i class="icon-font">&#xe003;</i>维修记录</a>
                    <ul class="sub-menu">
                    	<c:if test="${requestScope.ps=='1'}">
                    	<li><a href="<%=basePath%>SelectRepair!repairReview.action"><i class="icon-font">&#xe005;</i>维修审批</a></li>
                    	</c:if>
                    	<c:if test="${requestScope.ps=='0'}">
                        <li><a href="<%=basePath%>view/repairapply.jsp"><i class="icon-font">&#xe005;</i>维修申请</a></li>
                        </c:if>
                        <li><a href="<%=basePath%>SelectRepair.action"><i class="icon-font">&#xe006;</i>维修查询</a></li>
                    </ul>
                </li>
                <li>
                    <a href=""><i class="icon-font">&#xe018;</i>报废记录</a>
                    <ul class="sub-menu">
                    	<c:if test="${requestScope.ps=='1'}">
                    	<li><a href="<%=basePath%>SelectScrap!scrapReview.action"><i class="icon-font">&#xe005;</i>报废审批</a></li>
                    	</c:if>
                    	<c:if test="${requestScope.ps=='0'}">
                        <li><a href="<%=basePath%>view/scrapapply.jsp"><i class="icon-font">&#xe005;</i>报废申请</a></li>
                        </c:if>
                        <li><a href="<%=basePath%>SelectScrap.action"><i class="icon-font">&#xe037;</i>报废查询</a></li>
                    </ul>
                </li>
				<li>
                    <a href="<%=basePath%>Logout.action"><i class="icon-font">&#xe018;</i>退出系统</a>
                    
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="">首页</a></div>
        </div><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<h1><center><span style="font-weight:500;color:#BBB;font-size:24pt;">实验室设备管理系统</span></center></h1>
    </div>
    <!--/main-->
</div>
</body>
</html>