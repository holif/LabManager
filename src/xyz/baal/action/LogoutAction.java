package xyz.baal.action;

import java.io.IOException;

import org.apache.struts2.ServletActionContext;

public class LogoutAction {
	
	public String execute() throws IOException{
		ServletActionContext.getRequest().getSession().invalidate();
		ServletActionContext.getResponse().sendRedirect("login.jsp");
		return null;
	}
}
