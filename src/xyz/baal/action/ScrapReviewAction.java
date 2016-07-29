package xyz.baal.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import xyz.baal.bean.Device;
import xyz.baal.bean.Scrap;
import xyz.baal.dao.DeviceDao;
import xyz.baal.dao.ScrapDao;
import xyz.baal.service.DeviceService;
import xyz.baal.service.ScrapService;

public class ScrapReviewAction {
	private int id;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String reject(){
		SimpleDateFormat sm = new SimpleDateFormat("yyyy-MM-dd");
		Scrap scrap = new Scrap();
		scrap.setId(id);
		scrap.setCheckDate(sm.format(new Date()));
		scrap.setPermission("驳回申请");
		ScrapService.updateAppealState(scrap);
		return "reject";
	}
	public String execute(){
		SimpleDateFormat sm = new SimpleDateFormat("yyyy-MM-dd");
		ScrapDao scrapDao = new ScrapDao();
		Scrap scrap = scrapDao.getScrapinfoById(id);
		scrap.setCheckDate(sm.format(new Date()));
		scrap.setPermission("已批准");
		ScrapService.updateAppealState(scrap);
		
		DeviceDao deviceDao = new DeviceDao();
		Device device = deviceDao.getDeviceinfoByDeviceNo(scrap.getDeviceNo());
		device.setScrap("已报废");
		DeviceService.updateDeviceInfo(device);
		return "success";
	}
}
