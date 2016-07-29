package xyz.baal.service;

import java.util.List;

import xyz.baal.bean.Scrap;
import xyz.baal.dao.ScrapDao;

/**
 * 设备报废服务类
 */
public class ScrapService {
	
	public static List<Scrap> getAllScrap(){
		List<Scrap> list = null;
		ScrapDao scrapDao = new ScrapDao();
		list = scrapDao.getAllScraps();
		return list;
	}
	public static boolean scrapAppeal(Scrap scrap){
		ScrapDao scrapDao = new ScrapDao();
		if(scrapDao.insertScrapinfo(scrap)){
			return true;
		} else {
			return false;
		}
	}
	public static boolean updateAppealState(Scrap scrap){
		ScrapDao scrapDao = new ScrapDao();
		boolean flg = scrapDao.updateScrapinfo(scrap);
		return flg;
	}
	/* 关键字查询  */
	public static List<Scrap> getDevicesByKey(String key){
		List<Scrap> list = null;
		return list;
	}
	public static List<Scrap> getDevicesByAppealState(String state){
		List<Scrap> list = null;
		ScrapDao scrapDao = new ScrapDao();
		list = scrapDao.getDevicesByAppealState(state);
		return list;
	}
}
