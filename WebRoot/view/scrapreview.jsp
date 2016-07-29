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
    <title>报废审批</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>view/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>view/css/main.css"/>
    <script type="text/javascript" src="<%=basePath%>view/js/modernizr.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/jquery-1.9.1.min.js"></script>
	<style type="text/css">
		td {text-align: center;}
		.result-content .result-tab th {text-align: center;}  
	</style>
	<script type="text/javascript">
		function update_agree(obj){
			var id = $(obj).attr("id"); 
			id =  document.getElementById("table").rows[id].cells[0].innerText;
			$.ajax({
				type : "post",
				url : "ScrapReview.action",
				data : "id=" + id,
				dataType : 'html',
				contentType : "application/x-www-form-urlencoded; charset=utf-8",
				success : function(result) {
					//location.reload();  
				}
			});
		}
		function update_disagree(obj){
			var id = $(obj).attr("id"); 
			id =  document.getElementById("table").rows[id].cells[0].innerText;
			$.ajax({
				type : "post",
				url : "ScrapReview!reject.action",
				data : "id=" + id,
				dataType : 'html',
				contentType : "application/x-www-form-urlencoded; charset=utf-8",
				success : function(result) {
					//location.reload();  
				}
			});
		}
	</script>
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
                        <li><a href=""><i class="icon-font">&#xe037;</i>报废审批</a></li>
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
            <div class="crumb-list"><i class="icon-font"></i><a href="<%=basePath%>view/index.jsp" color="#white">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="">报废记录</a><span class="crumb-step">&gt;</span><span class="crumb-name">报废审批</span></div>
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
                                    <option value="19">状态</option>
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
                    <table id="table" class="result-tab" width="100%">
                        <tr>
                            <th>ID</th>
                            <th>设备名</th>
                            <th>编号</th>
                            <th>申请时间</th>
                            <th>是否批准</th>
							<th>责任人</th>
                            <th>报废信息</th>
							<th>审阅</th>
                        </tr>
                        <c:forEach items="${listscrap}" var="info" varStatus="status">
                        	<tr>
	                            <td>${info.id}</td> 
	                            <td>${info.deviceName}</td>
	                            <td>${info.deviceNo}</td> 
	                            <td>${info.applyDate}</td>
	                            <td>${info.permission}</td> 
								<td>${info.agent}</td> 
	                            <td>${info.scrapInfo}</td>
								<td><button class="btn btn-primary btn2" id="${status.count}" onclick="update_agree(this)">同意</button>   <button class="btn btn-primary btn2" id="${status.count}" onclick="update_disagree(this)">驳回</button></td>
	                        </tr>
                        </c:forEach>
                    </table>
                    <div class="list-page"> ${sumscrap} 条 1/1 页</div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>