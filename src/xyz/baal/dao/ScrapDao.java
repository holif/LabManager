package xyz.baal.dao;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import xyz.baal.bean.GetSqlSession;
import xyz.baal.bean.Scrap;

/**
 * 设备报废DAO
 */
public class ScrapDao {
	public boolean insertScrapinfo(Scrap scrap){
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			sqlSession.insert("xyz.baal.mybatis.scrapinfoMapper.insertScrapinfo",scrap);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public boolean updateScrapinfo(Scrap scrap){
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			sqlSession.insert("xyz.baal.mybatis.scrapinfoMapper.updateScrapinfoById",scrap);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public List<Scrap> getAllScraps(){
		List<Scrap> list = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			list = sqlSession.selectList("xyz.baal.mybatis.scrapinfoMapper.getAllScrapinfo");
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<Scrap> getDevicesByAppealState(String state){
		List<Scrap> list = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			list = sqlSession.selectList("xyz.baal.mybatis.scrapinfoMapper.getDevicesByAppealState",state);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return list;
	}	
	public Scrap getScrapinfoById(int id){
		Scrap scrap = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			scrap = sqlSession.selectOne("xyz.baal.mybatis.scrapinfoMapper.getScrapinfoById",id);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return scrap;
	}
}
