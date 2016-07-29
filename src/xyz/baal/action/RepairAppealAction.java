package xyz.baal.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import xyz.baal.bean.Repair;
import xyz.baal.service.RepairService;

public class RepairAppealAction {
	private String deviceName;			//设备名
	private String deviceNo;			//设备号
	private String repairManufacturer;	//维修厂家
	private String repairPrice;			//维修费
	private String repairInfo;			//维修信息
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
	public String getRepairManufacturer() {
		return repairManufacturer;
	}
	public void setRepairManufacturer(String repairManufacturer) {
		this.repairManufacturer = repairManufacturer;
	}
	public String getRepairPrice() {
		return repairPrice;
	}
	public void setRepairPrice(String repairPrice) {
		this.repairPrice = repairPrice;
	}
	public String getRepairInfo() {
		return repairInfo;
	}
	public void setRepairInfo(String repairInfo) {
		this.repairInfo = repairInfo;
	}
	
	public String execute(){
		String agent = ServletActionContext.getRequest().getSession().getAttribute("uname").toString();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String applyDate = simpleDateFormat.format(new Date());
		System.out.println(applyDate);
		Repair repair = new Repair(deviceName, deviceNo, applyDate, "-", repairManufacturer, repairPrice, agent, repairInfo, "等待审核");
		if(RepairService.repairAppeal(repair)){
			return "success";
		} else {
			return "error";
		}
			
	}
}
