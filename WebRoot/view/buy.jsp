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
    <title>购买申请</title>
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
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="<%=basePath%>view/index.jsp">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="">购买申请</a></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="BuyAppeal.action" method="post" id="myform" name="myform" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody>
						
						<tr>
                                <th><i class="require-red">*</i>设备名：</th>
                                <td>
                                    <input class="common-text required" id="title" name="deviceName" size="50" value="" type="text">
                                </td>
                        </tr>
						
						<tr>
                            <th width="120"><i class="require-red">*</i>类别：</th>
                            <td>
                                <select name="deviceType" id="catid" class="required">
                                    <option value="类别0">请选择</option>
                                    <option value="类别一">类别一</option>
                                    <option value="类别二">类别二</option>
                                    <option value="类别三">类别三</option>
                                    <option value="类别四">类别四</option>
                                    <option value="类别五">类别五</option>
                                </select>
                            </td>
                        </tr>
                            <tr>
                                <th><i class="require-red">*</i>型号：</th>
                                <td>
                                    <input class="common-text required" id="title" name="deviceClassNo" size="50" value="" type="text">
                                </td>
                            </tr>
							
							<tr>
                                <th><i class="require-red">*</i>规格：</th>
                                <td>
                                    <input class="common-text required" id="title" name="deviceSize" size="50" value="" type="text">
                                </td>
                            </tr>
                            
							<tr>
                                <th><i class="require-red">*</i>单价：</th>
                                <td>
                                    <input class="common-text required" id="title" name="devicePrice" size="50" value="" type="text">
                                </td>
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