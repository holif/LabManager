package xyz.baal.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import xyz.baal.bean.Scrap;
import xyz.baal.service.ScrapService;

public class ScrapAppealAction {
	private String deviceName;	//设备名
	private String deviceNo;	//设备编号
	private String scrapInfo;	//报废信息
	
	public String getDeviceName() {
		return deviceName;
	}
	public void setDeviceName(String deviceName) {
		this.deviceName = deviceName;
	}
	public String getDeviceNo() {
		return deviceNo;
	}
	public void setDeviceNo(String deviceNo) {
		this.deviceNo = deviceNo;
	}
	public String getScrapInfo() {
		return scrapInfo;
	}
	public void setScrapInfo(String scrapInfo) {
		this.scrapInfo = scrapInfo;
	}
	public String execute(){
		SimpleDateFormat smf = new SimpleDateFormat("yyyy-MM-dd");
		String applyDate = smf.format(new Date());
		String agent = ServletActionContext.getRequest()
				.getSession().getAttribute("uname").toString();
		Scrap scrap = new Scrap(deviceName, deviceNo, applyDate, "等待审核", agent, "-", scrapInfo);
		if(ScrapService.scrapAppeal(scrap)){
			return "success";
		} else {
			return "error";
		}	
	}
}
