package xyz.baal.bean;

public class Buy {
	private int id;
	private String deviceName;		//设备名
	private String deviceType;		//设备类别
	private String deviceClassNo;	//设备型号
	private String deviceSize;		//设备规格
	private String devicePrice;		//设备价格
	private String applyDate;		//申请日期
	private String agent;			//经办人
	private String permission;		//是否批准
	private String checkDate;		//查阅日期
	
	public Buy() {
		super();
	}

	public Buy(String deviceName, String deviceType, String deviceClassNo,
			String deviceSize, String devicePrice, String applyDate,String agent,
			String permission, String checkDate) {
		super();
		this.deviceName = deviceName;
		this.deviceType = deviceType;
		this.deviceClassNo = deviceClassNo;
		this.deviceSize = deviceSize;
		this.devicePrice = devicePrice;
		this.applyDate = applyDate;
		this.agent = agent;
		this.permission = permission;
		this.checkDate = checkDate;
	}

	public Buy(int id, String deviceName, String deviceType,
			String deviceClassNo, String deviceSize, String devicePrice,
			String applyDate,String agent, String permission, String checkDate) {
		super();
		this.id = id;
		this.deviceName = deviceName;
		this.deviceType = deviceType;
		this.deviceClassNo = deviceClassNo;
		this.deviceSize = deviceSize;
		this.devicePrice = devicePrice;
		this.applyDate = applyDate;
		this.agent = agent;
		this.permission = permission;
		this.checkDate = checkDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

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

	public String getapplyDate() {
		return applyDate;
	}

	public void setapplyDate(String applyDate) {
		this.applyDate = applyDate;
	}
	
	public String getAgent() {
		return agent;
	}

	public void setAgent(String agent) {
		this.agent = agent;
	}

	public String getPermission() {
		return permission;
	}

	public void setPermission(String permission) {
		this.permission = permission;
	}

	public String getcheckDate() {
		return checkDate;
	}

	public void setcheckDate(String checkDate) {
		this.checkDate = checkDate;
	}

	@Override
	public String toString() {
		return "Buy [id=" + id + ", deviceName=" + deviceName + ", deviceType="
				+ deviceType + ", deviceClassNo=" + deviceClassNo
				+ ", deviceSize=" + deviceSize + ", devicePrice=" + devicePrice
				+ ", applyDate=" + applyDate + ", permission=" + permission
				+ ", checkDate=" + checkDate + "]";
	}
}
