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
    <title>报废查询</title>
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
            <h1 class="topbar-logo none"><a href="<%=basePath%>view/index.jsp" class="navbar-brand">管理员中心</a></h1>
        </div>
    </div>
</div>
<div class="container clearfix">
    <%@ include file="sidebar.jsp" %>
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="<%=basePath%>view/index.jsp" color="#white">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="">报废记录</a><span class="crumb-step">&gt;</span><span class="crumb-name">报废查询</span></div>
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
                                    <option value="19">申请状态</option>
                                    <option value="20">责任人</option>
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
                            <th>编号</th>
                            <th>申请时间</th>
                            <th>是否批准</th>
                            <th>报废日期</th>
							<th>责任人</th>
                            <th>报废信息</th>
                        </tr>
                        <c:forEach items="${listscrap}" var="info">
                        	<tr>
	                            <td>${info.id}</td> 
	                            <td>${info.deviceName}</td>
	                            <td>${info.deviceNo}</td> 
	                            <td>${info.applyDate}</td>
	                            <td>${info.permission}</td> 
	                            <td>${info.checkDate}</td>
								<td>${info.agent}</td> 
	                            <td>${info.scrapInfo}</td>
	                        </tr>
                        </c:forEach>
                    </table>
                    <div class="list-page">${sumscrap}条 1/1 页</div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>