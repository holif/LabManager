package xyz.baal.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import xyz.baal.bean.Buy;
import xyz.baal.bean.Device;
import xyz.baal.dao.BuyDao;
import xyz.baal.service.BuyService;
import xyz.baal.service.DeviceService;

public class BuyReviewAction {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}	
	public String reject(){
		SimpleDateFormat sm = new SimpleDateFormat("yyyy-MM-dd");
		BuyDao buyDao = new BuyDao();		
		Buy buy =buyDao.getBuyinfoById(id);
		buy.setPermission("驳回申请");
		buy.setcheckDate(sm.format(new Date()));
		BuyService.updateAppealState(buy);
		return "reject";
	}
	public String execute(){
		SimpleDateFormat sm = new SimpleDateFormat("yyyy-MM-dd");
		BuyDao buyDao = new BuyDao();		
		Buy buy =buyDao.getBuyinfoById(id);
		buy.setPermission("已批准");	
		buy.setcheckDate(sm.format(new Date()));
		BuyService.updateAppealState(buy);		
		String operator = ServletActionContext.getRequest()
				.getSession().getAttribute("uname").toString();
		Device device = new Device(buy, operator);		
		DeviceService.insertDevice(device);
		return "success";
	}
}
