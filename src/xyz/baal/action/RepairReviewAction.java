package xyz.baal.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import xyz.baal.bean.Device;
import xyz.baal.bean.Repair;
import xyz.baal.dao.DeviceDao;
import xyz.baal.dao.RepairDao;
import xyz.baal.service.DeviceService;
import xyz.baal.service.RepairService;

public class RepairReviewAction {
	private int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String reject(){
		SimpleDateFormat sm = new SimpleDateFormat("yyyy-MM-dd");
		Repair repair = new Repair();
		repair.setId(id);
		repair.setState("驳回申请");
		repair.setRepairDate(sm.format(new Date()));
		RepairService.updateAppealState(repair);
		return "reject";
	}
	public String execute(){
		SimpleDateFormat sm = new SimpleDateFormat("yyyy-MM-dd");
		RepairDao repairDao = new RepairDao();
		Repair repair = repairDao.getRepairsinfoById(id);
		repair.setState("已批准");
		repair.setRepairDate(sm.format(new Date()));
		RepairService.updateAppealState(repair);
		DeviceDao deviceDao = new DeviceDao();
		Device device = deviceDao.getDeviceinfoByDeviceNo(repair.getDeviceNo());
		device.setMaintenanceRecord("有维修记录");
		DeviceService.updateDeviceInfo(device);
		return "success";
	}
}
