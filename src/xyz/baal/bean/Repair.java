package xyz.baal.bean;

/**
 * 维修表信息
 */
public class Repair {
	private int id;
	private String deviceName;			//设备名
	private String deviceNo;			//设备号
	private String applyDate;			//申请时间
	private String repairDate;			//维修时间
	private String repairManufacturer;	//维修厂家
	private String repairPrice;			//维修费
	private String agent;				//责任人
	private String repairInfo;			//维修信息
	private String state;				//申请状态
	
	public Repair() {
		super();
	}

	public Repair(String deviceName, String deviceNo, String applyDate,
			String repairDate, String repairManufacturer, String repairPrice,
			String agent, String repairInfo, String state) {
		super();
		this.deviceName = deviceName;
		this.deviceNo = deviceNo;
		this.applyDate = applyDate;
		this.repairDate = repairDate;
		this.repairManufacturer = repairManufacturer;
		this.repairPrice = repairPrice;
		this.agent = agent;
		this.repairInfo = repairInfo;
		this.state = state;
	}

	public Repair(int id, String deviceName, String deviceNo, String applyDate,
			String repairDate, String repairManufacturer, String repairPrice,
			String agent, String repairInfo, String state) {
		super();
		this.id = id;
		this.deviceName = deviceName;
		this.deviceNo = deviceNo;
		this.applyDate = applyDate;
		this.repairDate = repairDate;
		this.repairManufacturer = repairManufacturer;
		this.repairPrice = repairPrice;
		this.agent = agent;
		this.repairInfo = repairInfo;
		this.state = state;
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

	public String getDeviceNo() {
		return deviceNo;
	}

	public void setDeviceNo(String deviceNo) {
		this.deviceNo = deviceNo;
	}

	public String getApplyDate() {
		return applyDate;
	}

	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}

	public String getRepairDate() {
		return repairDate;
	}

	public void setRepairDate(String repairDate) {
		this.repairDate = repairDate;
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

	public String getAgent() {
		return agent;
	}

	public void setAgent(String agent) {
		this.agent = agent;
	}

	public String getRepairInfo() {
		return repairInfo;
	}

	public void setRepairInfo(String repairInfo) {
		this.repairInfo = repairInfo;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "Repair [id=" + id + ", deviceName=" + deviceName
				+ ", deviceNo=" + deviceNo + ", applyDate=" + applyDate
				+ ", repairDate=" + repairDate + ", repairManufacturer="
				+ repairManufacturer + ", repairPrice=" + repairPrice
				+ ", agent=" + agent + ", repairInfo=" + repairInfo
				+ ", state=" + state + "]";
	}
}
