package xyz.baal.action;

import java.util.List;

import xyz.baal.bean.Repair;
import xyz.baal.service.RepairService;

public class SelectRepairAction {
	private List<Repair> listrepair;
	private int sumrepair;
	private String key;
	
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public List<Repair> getListrepair() {
		return listrepair;
	}
	public void setListrepair(List<Repair> listrepair) {
		this.listrepair = listrepair;
	}
	public int getSumrepair() {
		return sumrepair;
	}
	public void setSumrepair(int sumrepair) {
		this.sumrepair = sumrepair;
	}
	public String byKey(){
		listrepair = RepairService.getDevicesByKey(key);
		return "success";
	}
	public String repairReview(){
		listrepair = RepairService.getDevicesByAppealState("等待审核");
		if(listrepair!=null)
			sumrepair = listrepair.size();
		return "review";
	}
	public String execute(){
		listrepair = RepairService.getAllRepair();
		if(listrepair!=null)
			sumrepair = listrepair.size();
		return "success";
	}
}
