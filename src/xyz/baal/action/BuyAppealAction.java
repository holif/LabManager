package xyz.baal.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import xyz.baal.bean.Buy;
import xyz.baal.service.BuyService;

public class BuyAppealAction {
	private Buy buy;
	private String deviceName;
	private String deviceType;
	private String deviceClassNo;
	private String deviceSize;
	private String devicePrice;
	private String applyDate;
	private String permission;
	private String checkDate;
	public String getDeviceName() {
		return deviceName;
	}
	public void setDeviceName(String deviceName) {
		this.deviceName = deviceName;
	}
	public String getDeviceType() {
		return deviceType;
	}
	public void setDeviceType(String deviceType) {
		this.deviceType = deviceType;
	}
	public String getDeviceClassNo() {
		return deviceClassNo;
	}
	public void setDeviceClassNo(String deviceClassNo) {
		this.deviceClassNo = deviceClassNo;
	}
	public String getDeviceSize() {
		return deviceSize;
	}
	public void setDeviceSize(String deviceSize) {
		this.deviceSize = deviceSize;
	}
	public String getDevicePrice() {
		return devicePrice;
	}
	public void setDevicePrice(String devicePrice) {
		this.devicePrice = devicePrice;
	}
	public String getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		if(permission==null){
			this.permission = "等待审核";
		} else {
			this.permission = permission;
		}
	}
	public String getCheckDate() {
		return checkDate;
	}
	public void setCheckDate(String checkDate) {
		this.checkDate = checkDate;
	}
	public Buy getBuy() {
		return buy;
	}
	public void setBuy(Buy buy) {
		this.buy = buy;
	}
	public String execute(){
		SimpleDateFormat smd =new	SimpleDateFormat("yyyy-MM-dd");
		applyDate = smd.format(new Date());
		String name = ServletActionContext.getRequest().
				getSession().getAttribute("uname").toString();		
		buy = new Buy(deviceName, deviceType, deviceClassNo, deviceSize, 
				devicePrice, applyDate, name, "等待审核", "-");
		
		if(BuyService.appealBuy(buy)){
			return "success";
		} else {
			return "error";
		}		
	}
}
