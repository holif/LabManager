package xyz.baal.action;

import java.util.List;

import xyz.baal.bean.Buy;
import xyz.baal.service.BuyService;

public class SelectBuyAction {
	private List<Buy> listbuy;
	private int sumbuy;
	
	public List<Buy> getListbuy() {
		return listbuy;
	}
	public void setListbuy(List<Buy> listbuy) {
		this.listbuy = listbuy;
	}
	public int getSumbuy() {
		return sumbuy;
	}
	public void setSumbuy(int sumbuy) {
		this.sumbuy = sumbuy;
	}
	public String buyReview(){
		listbuy = BuyService.getDevicesByAppealState("等待审核");
		if(listbuy!=null)
			sumbuy = listbuy.size();
		return "review";
	}
	public String execute(){
		listbuy = BuyService.getAllBuy();
		sumbuy = listbuy.size();
		return "success";
	}
}
