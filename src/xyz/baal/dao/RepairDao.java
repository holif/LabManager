package xyz.baal.dao;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import xyz.baal.bean.GetSqlSession;
import xyz.baal.bean.Repair;

/**
 * 设备维修DAO
 */
public class RepairDao {
	public boolean insertRepairinfo(Repair repair){
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			sqlSession.insert("xyz.baal.mybatis.repairinfoMapper.insertRepairinfo",repair);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public boolean updateRepairinfo(Repair repair){
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			sqlSession.insert("xyz.baal.mybatis.repairinfoMapper.updateRepairinfoById",repair);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public List<Repair> getAllRepairs(){
		List<Repair> list = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			list = sqlSession.selectList("xyz.baal.mybatis.repairinfoMapper.getAllRepairsinfo");
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<Repair> getDevicesByAppealState(String state){
		List<Repair> list = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			list = sqlSession.selectList("xyz.baal.mybatis.repairinfoMapper.getDevicesByAppealState",state);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return list;
	}	
	public List<Repair> getDevicesByKey(String key){
		List<Repair> list = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			list = sqlSession.selectList("xyz.baal.mybatis.repairinfoMapper.getDevicesByKey",key);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return list;
	}	
	public Repair getRepairsinfoById(int id){
		Repair repair = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			repair = sqlSession.selectOne("xyz.baal.mybatis.repairinfoMapper.getRepairsinfoById",id);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return repair;
	}
}
