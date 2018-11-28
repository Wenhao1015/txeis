package com.shinetech.model;

import java.text.SimpleDateFormat;

import net.sf.json.JSONObject;

public class Events {

	private String title;
	private String startDate;
	private String endDate;
	private String id;
	
	public Events(LeaveRequests request) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		this.title = "Leave";
		this.startDate = sdf.format(request.getLeaveStartDate());
		if(("0").equals(request.getLeaveStartDateString()))
			this.startDate +="T00:00:00";
		else
			this.startDate += "T12:00:00";
		this.endDate = sdf.format(request.getLeaveEndDate());
		if(("0").equals(request.getLeaveStartDateString()))
			this.endDate +="T11:59:59";
		else
			this.endDate += "T23:59:59";
		this.id = request.getId()+"";
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public JSONObject toJson() {
		// TODO Auto-generated method stub
		JSONObject jo = new JSONObject();
		jo.put("id", this.getId());
		jo.put("startDate", this.getStartDate());
		jo.put("endDate", this.getEndDate());
		jo.put("title", this.getTitle());
		return jo;
	}

}
