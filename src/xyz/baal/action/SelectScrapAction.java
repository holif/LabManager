package xyz.baal.action;

import java.util.List;

import xyz.baal.bean.Scrap;
import xyz.baal.service.ScrapService;

public class SelectScrapAction {
	private List<Scrap> listscrap;
	private int sumscrap;

	public List<Scrap> getListscrap() {
		return listscrap;
	}
	public void setListscrap(List<Scrap> listscrap) {
		this.listscrap = listscrap;
	}
	public int getSumscrap() {
		return sumscrap;
	}
	public void setSumscrap(int sumscrap) {
		this.sumscrap = sumscrap;
	}
	public String scrapReview(){
		listscrap = ScrapService.getDevicesByAppealState("等待审核");
		if(listscrap!=null)
			sumscrap = listscrap.size();
		return "review";
	}
	public String execute(){	
		listscrap = ScrapService.getAllScrap();
		if(listscrap!=null)
			sumscrap = listscrap.size();
		return "success";		
	}
}
