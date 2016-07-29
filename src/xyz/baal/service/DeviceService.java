package xyz.baal.service;

import java.util.List;

import xyz.baal.bean.Device;
import xyz.baal.dao.DeviceDao;

/**
 * 设备服务类
 */
public class DeviceService {
	public static List<Device> getAllDevices(){
		List<Device> list = null;
		DeviceDao deviceDao = new DeviceDao();
		list = deviceDao.getAllDevices();
		return list;
	}
	public static List<Device> getDevicesByType(String type){
		List<Device> list = null;
		DeviceDao deviceDao = new DeviceDao();
		list = deviceDao.getDevicesByKey(type);
		return list;
	}
	public static Device getDeviceinfoByDeviceNo(String deviceNo){
		Device device = null;
		DeviceDao deviceDao = new DeviceDao();
		device = deviceDao.getDeviceinfoByDeviceNo(deviceNo);
		return device;
	}	
	public static boolean insertDevice(Device device){
		DeviceDao deviceDao = new DeviceDao();
		deviceDao.insertDevice(device);
		return true;
	}
	/* 关键字查询  */
	public static List<Device> getDevicesByKey(String key){
		List<Device> list = null;
		DeviceDao deviceDao = new DeviceDao();
		list = deviceDao.getDevicesByKey(key);
		return list;
	}
	/* 查询已报废的设备 */
	public static List<Device> getDevicesByScrap(String scrap){
		List<Device> list = null;
		return list;
	}
	/* 查询有维修记录的设备 */
	public static List<Device> getDevicesByRepairRecord(String repair){
		List<Device> list = null;
		return list;
	}
	public static boolean updateDeviceInfo(Device device){
		DeviceDao deviceDao = new DeviceDao();
		boolean flg = deviceDao.updateBuyinfo(device);
		return flg;
	}
}
