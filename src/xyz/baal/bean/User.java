package xyz.baal.bean;
/**
 * 用户表信息
 */
public class User {
	private int id;
	private String username;	//用户名
	private String password;	//密码
	private String permission;	//权限
	private String name;		//姓名
	public User() {
		super();
	}
	public User(String username, String password, String permission, String name) {
		super();
		this.username = username;
		this.password = password;
		this.permission = permission;
		this.name = name;
	}
	public User(int id, String username, String password, String permission,
			String name) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.permission = permission;
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
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
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
