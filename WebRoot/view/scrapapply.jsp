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