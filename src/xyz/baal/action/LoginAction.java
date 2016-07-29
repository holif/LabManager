package xyz.baal.action;

import org.apache.struts2.ServletActionContext;

import xyz.baal.bean.User;
import xyz.baal.service.UserService;

public class LoginAction {
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String execute(){
		
		if(username.equals("")||password.equals("")){
			return "error";
		} else {
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			user = UserService.userLogin(user);
			if(null == user){
				return "error";
			}
			ServletActionContext.getRequest()
				.getSession().setAttribute("uname",user.getName());
			ServletActionContext.getRequest()
				.getSession().setAttribute("ps", user.getPermission());
		}		
		return "success";
	}
}
