package xyz.baal.dao;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import xyz.baal.bean.Device;
import xyz.baal.bean.GetSqlSession;

/**
 * 设备DAO
 */
public class DeviceDao {
	public boolean insertDevice(Device device){
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			sqlSession.insert("xyz.baal.mybatis.deviceinfoMapper.insertDeviceinfo",device);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public List<Device> getAllDevices(){
		List<Device> list = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			list = sqlSession.selectList("xyz.baal.mybatis.deviceinfoMapper.getAllDeviceinfo");
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<Device> getDevicesByKey(String key){
		List<Device> list = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			list = sqlSession.selectList("xyz.baal.mybatis.deviceinfoMapper.getDeviceinfoByKey",key);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return list;
	}
	public Device getDeviceinfoByDeviceNo(String deviceNo){
		Device device = null;
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			device = sqlSession.selectOne("xyz.baal.mybatis.deviceinfoMapper.getDeviceinfoByDeviceNo",deviceNo);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return device;
	}	
	public boolean updateBuyinfo(Device device){
		try {
			SqlSession sqlSession = GetSqlSession.getSqlSession();
			sqlSession.update("xyz.baal.mybatis.buyinfoMapper.updateBuyinfoByDeviceNo",device);
			sqlSession.commit();
			sqlSession.close();
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}	
}
