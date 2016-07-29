package xyz.baal.action;

import java.util.List;

import xyz.baal.bean.Device;
import xyz.baal.service.DeviceService;

/**
 * 设备查询Action
 */
public class SelectDeviceAction {
	private List<Device> list;
	private int sum;
	private String key;
	
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public List<Device> getList() {
		return list;
	}
	public void setList(List<Device> list) {
		this.list = list;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public String byKey(){
		list = DeviceService.getDevicesByKey(key);
		sum = list.size();
		return "success";
	}
	public String execute(){
		list = DeviceService.getAllDevices();
		sum = list.size();
		return "success";
	}
}
