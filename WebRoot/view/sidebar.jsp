<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>
	<div class="sidebar-wrap">
		<div class="sidebar-title">
			<h1>菜单</h1>
		</div>
		<div class="sidebar-content">
			<ul class="sidebar-list">
				<li><a href="<%=basePath%>SelectDevice.action"><i
						class="icon-font">&#xe018;</i>设备查询</a>
				</li>
				<li><a href=""><i class="icon-font">&#xe005;</i>购买申请</a>
					<ul class="sub-menu">
						<c:if test="${requestScope.ps=='1'}">
							<li><a href="<%=basePath%>buyReview.action"><i
									class="icon-font">&#xe005;</i>申请审批</a></li>
						</c:if>
						<c:if test="${requestScope.ps=='0'}">
							<li><a href="<%=basePath%>view/buy.jsp"><i
									class="icon-font">&#xe005;</i>购买申请</a></li>
						</c:if>
						<li><a href="<%=basePath%>SelectBuy.action"><i
								class="icon-font">&#xe005;</i>申请记录</a></li>
					</ul>
				</li>
				<li><a href=""><i class="icon-font">&#xe003;</i>维修记录</a>
					<ul class="sub-menu">
						<c:if test="${requestScope.ps=='1'}">
							<li><a href="<%=basePath%>repairReview.action"><i
									class="icon-font">&#xe005;</i>维修审批</a></li>
						</c:if>
						<c:if test="${requestScope.ps=='0'}">
							<li><a href="<%=basePath%>view/repairapply.jsp"><i
									class="icon-font">&#xe005;</i>维修申请</a></li>
						</c:if>
						<li><a href="<%=basePath%>SelectRepair.action"><i
								class="icon-font">&#xe006;</i>维修查询</a></li>
					</ul>
				</li>
				<li><a href=""><i class="icon-font">&#xe018;</i>报废记录</a>
					<ul class="sub-menu">
						<c:if test="${requestScope.ps=='1'}">
							<li><a href="<%=basePath%>scrapReview.action"><i
									class="icon-font">&#xe005;</i>报废审批</a></li>
						</c:if>
						<c:if test="${requestScope.ps=='0'}">
							<li><a href="<%=basePath%>view/scrapapply.jsp"><i
									class="icon-font">&#xe005;</i>报废申请</a></li>
						</c:if>
						<li><a href="<%=basePath%>SelectScrap.action"><i
								class="icon-font">&#xe037;</i>报废查询</a></li>
					</ul>
				</li>
				<li><a href="<%=basePath%>Logout.action"><i
						class="icon-font">&#xe018;</i>退出系统</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>