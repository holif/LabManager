package xyz.baal.bean;

/**
 * 报废表信息
 */
public class Scrap {
	
	private int id;
	private String deviceName;	//设备名
	private String deviceNo;	//设备编号
	private String applyDate;	//申请时间
	private String permission;  //是否批准
	private String agent;		//经办人
	private String checkDate;	//批准时间
	private String scrapInfo;	//报废信息
	
	public Scrap() {
		super();
	}
	
	public Scrap(String deviceName, String deviceNo, String applyDate,
			String permission,String agent, String checkDate, String scrapInfo) {
		super();
		this.deviceName = deviceName;
		this.deviceNo = deviceNo;
		this.applyDate = applyDate;
		this.permission = permission;
		this.agent = agent;
		this.checkDate = checkDate;
		this.scrapInfo = scrapInfo;
	}
	
	public Scrap(int id, String deviceName, String deviceNo, String applyDate,
			String permission,String agent, String checkDate, String scrapInfo) {
		super();
		this.id = id;
		this.deviceName = deviceName;
		this.deviceNo = deviceNo;
		this.applyDate = applyDate;
		this.permission = permission;
		this.agent = agent;
		this.checkDate = checkDate;
		this.scrapInfo = scrapInfo;
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
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	public String getAgent() {
		return agent;
	}
	public void setAgent(String agent) {
		this.agent = agent;
	}
	public String getCheckDate() {
		return checkDate;
	}
	public void setCheckDate(String checkDate) {
		this.checkDate = checkDate;
	}
	public String getScrapInfo() {
		return scrapInfo;
	}
	public void setScrapInfo(String scrapInfo) {
		this.scrapInfo = scrapInfo;
	}
	
	@Override
	public String toString() {
		return "Scrap [id=" + id + ", deviceName=" + deviceName + ", deviceNo="
				+ deviceNo + ", applyDate=" + applyDate + ", permission="
				+ permission + ", checkDate=" + checkDate + ", scrapInfo="
				+ scrapInfo + "]";
	}
}
