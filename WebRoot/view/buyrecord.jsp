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
    <title>申请记录</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>view/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>view/css/main.css"/>
    <script type="text/javascript" src="<%=basePath%>view/js/modernizr.min.js"></script>
	<style type="text/css">
		td {text-align: center;} 
		.result-content .result-tab th {text-align: center;} 
	</style>
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
    <!--<div class="topbar-inner clearfix">-->
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.jsp" class="navbar-brand">管理员中心</a></h1>
        </div>
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
                    	<li><a href=""><i class="icon-font">&#xe005;</i>申请记录</a></li>
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
            <div class="crumb-list"><i class="icon-font"></i><a href="<%=basePath%>view/index.jsp" color="#white">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="">购买申请</a><span class="crumb-step">&gt;</span><span class="crumb-name">申请记录</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="#" method="post">
                    <table class="search-tab">
                        <tr>
                            <th width="120">选择分类:</th>
                            <td>
                                <select name="search-sort" id="">
                                    <option value="">全部</option>
                                   <option value="类别一">类别一</option>
                                    <option value="类别二">类别二</option>
                                    <option value="类别三">类别三</option>
                                    <option value="类别四">类别四</option>
                                    <option value="类别五">类别五</option>
                                </select>
                            </td>
                            <th width="70">关键字:</th>
                            <td><input class="common-text" placeholder="关键字" name="keywords" value="" id="" type="text"></td>
                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
             <!-- <a id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a> -->
                        <a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>ID</th>
                            <th>设备名</th>
                            <th>类别</th>
							<th>设备型号</th>
							<th>设备规格</th>
							<th>设备单价</th>
							<th>申请时间</th>
							<th>责任人</th>
							<th>申请状态</th>
							<th>批准日期</th>
                        </tr>
                        <c:forEach items="${listbuy}"  var="infoi">
	                        <tr>
	                            <td>${infoi.id}</td> 
		                        <td>${infoi.deviceName}</td> 
		                        <td>${infoi.deviceType}</td>
		                        <td>${infoi.deviceClassNo}</td> 
		                        <td>${infoi.deviceSize}</td>
								<td>${infoi.devicePrice}</td> 
		                        <td>${infoi.applyDate}</td>
		                        <td>${infoi.agent}</td> 
		                        <td>${infoi.permission}</td>
		                        <td>${infoi.checkDate}</td> 
	                        </tr>
                        </c:forEach>                  
                    </table>
                    <div class="list-page">${sumbuy}条 1/1 页</div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>