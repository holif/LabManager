package xyz.baal.service;

import java.util.List;

import xyz.baal.bean.Buy;
import xyz.baal.dao.BuyDao;

/**
 * 设备购买服务类
 */
public class BuyService {
	
	public static List<Buy> getAllBuy(){
		List<Buy> list = null;
		BuyDao buyDao = new BuyDao();
		list = buyDao.getAllBuysinfo();
		return list;
	}
	public static List<Buy> getBuyByType(String type){
		List<Buy> list = null;
		BuyDao buyDao = new BuyDao();
		list = buyDao.getBuysinfoByType(type);
		return list;
	}
	public static boolean appealBuy(Buy buy){
		BuyDao buyDao = new BuyDao();
		buyDao.insertBuyinfo(buy);
		return true;
	}
	public static boolean updateAppealState(Buy buy){
		BuyDao buyDao = new BuyDao();
		buyDao.updateBuyinfo(buy);
		return true;
	}
	/* 关键字查询  */
	public static List<Buy> getDevicesByKey(String key){
		List<Buy> list = null;
		return list;
	}
	public static List<Buy> getDevicesByAppealState(String state){
		List<Buy> list = null;
		BuyDao buyDao=new BuyDao();
		list=buyDao.getBuyinfoByState(state);
		return list;
	}
}
