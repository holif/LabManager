package xyz.baal.service;

import java.util.List;

import xyz.baal.bean.Repair;
import xyz.baal.dao.RepairDao;

/**
 * 设备维修服务类
 */
public class RepairService {
	
	public static List<Repair> getAllRepair(){
		List<Repair> list = null;
		RepairDao repairDao = new RepairDao();
		list = repairDao.getAllRepairs();
		return list;
	}
	public static boolean repairAppeal(Repair repair){
		RepairDao repairDao = new RepairDao();
		boolean flg = repairDao.insertRepairinfo(repair);
		return flg;
	}
	public static boolean updateAppealState(Repair repair){
		RepairDao repairDao = new RepairDao();
		repairDao.updateRepairinfo(repair);
		return true;
	}
	/* 关键字查询  */
	public static List<Repair> getDevicesByKey(String key){
		List<Repair> list = null;
		return list;
	}
	public static List<Repair> getDevicesByAppealState(String state){
		List<Repair> list = null;
		RepairDao repairDao = new RepairDao();
		list=repairDao.getDevicesByAppealState(state);
		return list;
	}
}
