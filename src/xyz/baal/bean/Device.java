package xyz.baal.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 设备表信息
 */
public class Device {
	private int id;
	private String type;				//设备类别
	private String deviceName;			//设备名
	private String deviceNo;			//设备号
	private String deviceClassNo;		//设备型号
	private String deviceSize;			//设备规格
	private String devicePrice;			//设备价格
	private String buyDate;				//购买日期
	private String manufacturer;		//生产厂家
	private String warranty;			//保修期
	private String operator;			//经办人
	private String maintenanceRecord;	//维修记录
	private String scrap;				//是否报废
	
	public Device() {
		super();
	}

	public Device(Buy buy,String operator){
		SimpleDateFormat sm = new SimpleDateFormat("yyyy-MM-dd");
		this.type = buy.getDeviceType();
		this.deviceName = buy.getDeviceName();
		this.deviceNo = System.currentTimeMillis() + "";
		this.deviceClassNo = buy.getDeviceClassNo();
		this.deviceSize = buy.getDeviceSize();
		this.devicePrice = buy.getDevicePrice();
		this.buyDate = sm.format(new Date());
		this.manufacturer = "滁州市机械厂";
		this.warranty = "三年";
		this.operator = operator;
		this.maintenanceRecord = "无";
		this.scrap = "否";
	}
	
	public Device(String type, String deviceName, String deviceNo,
			String deviceClassNo, String deviceSize, String devicePrice,
			String buyDate, String manufacturer, String warranty,
			String operator, String maintenanceRecord, String scrap) {
		super();
		this.type = type;
		this.deviceName = deviceName;
		this.deviceNo = deviceNo;
		this.deviceClassNo = deviceClassNo;
		this.deviceSize = deviceSize;
		this.devicePrice = devicePrice;
		this.buyDate = buyDate;
		this.manufacturer = manufacturer;
		this.warranty = warranty;
		this.operator = operator;
		this.maintenanceRecord = maintenanceRecord;
		this.scrap = scrap;
	}

	public Device(int id, String type, String deviceName, String deviceNo,
			String deviceClassNo, String deviceSize, String devicePrice,
			String buyDate, String manufacturer, String warranty,
			String operator, String maintenanceRecord, String scrap) {
		super();
		this.id = id;
		this.type = type;
		this.deviceName = deviceName;
		this.deviceNo = deviceNo;
		this.deviceClassNo = deviceClassNo;
		this.deviceSize = deviceSize;
		this.devicePrice = devicePrice;
		this.buyDate = buyDate;
		this.manufacturer = manufacturer;
		this.warranty = warranty;
		this.operator = operator;
		this.maintenanceRecord = maintenanceRecord;
		this.scrap = scrap;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

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

	public String getBuyDate() {
		return buyDate;
	}

	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getWarranty() {
		return warranty;
	}

	public void setWarranty(String warranty) {
		this.warranty = warranty;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public String getMaintenanceRecord() {
		return maintenanceRecord;
	}

	public void setMaintenanceRecord(String maintenanceRecord) {
		if(maintenanceRecord.equals("")){
			maintenanceRecord = "无";
		}
		this.maintenanceRecord = maintenanceRecord;
	}

	public String getScrap() {
		return scrap;
	}

	public void setScrap(String scrap) {
		if(scrap.equals("")){
			scrap = "否";
		}
		this.scrap = scrap;
	}

	@Override
	public String toString() {
		return "Device [id=" + id + ", type=" + type + ", deviceName="
				+ deviceName + ", deviceNo=" + deviceNo + ", deviceClassNo="
				+ deviceClassNo + ", deviceSize=" + deviceSize
				+ ", devicePrice=" + devicePrice + ", buyDate=" + buyDate
				+ ", manufacturer=" + manufacturer + ", warranty=" + warranty
				+ ", operator=" + operator + ", maintenanceRecord="
				+ maintenanceRecord + ", scrap=" + scrap + "]";
	}
}
