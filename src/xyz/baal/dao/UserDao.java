package xyz.baal.dao;

import org.apache.ibatis.session.SqlSession;

import xyz.baal.bean.GetSqlSession;
import xyz.baal.bean.User;

/**
 * 用户DAO
 */
public class UserDao {
	public User getUserByusername(String username){
		User user = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			user = (User)sqlSession.selectOne(
				"xyz.baal.mybatis.userinfoMapper.getUserinfoByUsername",
				username);
			sqlSession.commit();
			sqlSession.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return user;
	}
}
