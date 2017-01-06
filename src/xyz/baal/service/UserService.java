package xyz.baal.service;

import javax.servlet.http.HttpSession;

import xyz.baal.bean.User;
import xyz.baal.dao.UserDao;

/**
 * 用户服务类
 */
public class UserService {
	
	public static User userLogin(User user){
		UserDao userDao = new UserDao();
		User usertemp= userDao.getUserByusername(user.getUsername());
		if(usertemp==null){
			return null;
		}
		if(user.getPassword().equals(usertemp.getPassword())){
			return usertemp;
		} else {
			return null;
		}
	}
	public static boolean userLogout(HttpSession session){
		session.invalidate();
		return true;
	}
}
