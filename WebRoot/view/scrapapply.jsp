<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>报废申请</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>view/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>view/css/main.css"/>
    <script type="text/javascript" src="<%=basePath%>view/js/modernizr.min.js"></script>
</head>
<body>
<%
	if(request.getSession().getAttribute("uname")==null){
		response.sendRedirect(basePath+"login.jsp"); 
	}
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
                    	<li><a href="<%=basePath%>view/buy.jsp"><i class="icon-font">&#xe005;</i>购买申请</a></li>
                    	<li><a href="<%=basePath%>SelectBuy.action"><i class="icon-font">&#xe005;</i>申请记录</a></li>
                    </ul>
                    
                </li>
                <li>
                    <a href=""><i class="icon-font">&#xe003;</i>维修记录</a>
                    <ul class="sub-menu">
                        <li><a href="<%=basePath%>view/repairapply.jsp"><i class="icon-font">&#xe005;</i>维修申请</a></li>
                        <li><a href="<%=basePath%>SelectRepair.action"><i class="icon-font">&#xe006;</i>维修查询</a></li>
                    </ul>
                </li>
                <li>
                    <a href=""><i class="icon-font">&#xe018;</i>报废记录</a>
                    <ul class="sub-menu">
                        <li><a href=""><i class="icon-font">&#xe005;</i>报废申请</a></li>
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
            <div class="crumb-list"><i class="icon-font"></i><a href="<%=basePath%>view/index.jsp">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="">报废记录</a><span class="crumb-step">&gt;</span><span>报废申请</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="<%=basePath%>ScrapAppeal.action" method="post" id="myform" name="myform" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody>
									
                            <tr>
                                <th><i class="require-red">*</i>设备名：</th>
                                <td>
                                    <input class="common-text required" id="deviceName" name="deviceName" size="50" value="" type="text">
                                </td>
                            </tr>
							
							<tr>
                                <th><i class="require-red">*</i>编号：</th>
                                <td>
                                    <input class="common-text required" id="title" name="deviceNo" size="50" value="" type="text">
                                </td>
                            </tr>
                            						
							<tr>
                                <th>报废信息：</th>
                                <td><textarea name="scrapInfo" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10"></textarea></td>
                            </tr>
							
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="申请" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>