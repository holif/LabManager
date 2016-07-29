package xyz.baal.dao;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import xyz.baal.bean.Buy;
import xyz.baal.bean.GetSqlSession;

/**
 * 设备购买DAO
 */
public class BuyDao {
	public boolean insertBuyinfo(Buy buy){
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			sqlSession.insert("xyz.baal.mybatis.buyinfoMapper.insertBuyinfo",buy);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public boolean updateBuyinfo(Buy buy){
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			sqlSession.insert("xyz.baal.mybatis.buyinfoMapper.updateBuyinfoById",buy);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public List<Buy> getAllBuysinfo(){
		List<Buy> list = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			list = sqlSession.selectList("xyz.baal.mybatis.buyinfoMapper.getAllBuyinfo");
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<Buy> getBuysinfoByType(String type){
		List<Buy> list = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			list = sqlSession.selectList("xyz.baal.mybatis.buyinfoMapper.getBuyinfoByType",type);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<Buy> getBuyinfoByState(String state){
		List<Buy> list = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			list = sqlSession.selectList("xyz.baal.mybatis.buyinfoMapper.getBuyinfoByState",state);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return list;
	}	
	public Buy getBuyinfoById(int id){
		Buy buy = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			buy = sqlSession.selectOne("xyz.baal.mybatis.buyinfoMapper.getBuyinfoById",id);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return buy;
	}
}
