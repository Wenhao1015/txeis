package com.esc20.nonDBModels;

import java.io.Serializable;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;

import com.esc20.model.LeaveRequests;

import net.sf.json.JSONObject;

public class LeaveRequestModel implements Serializable {
	
	private static final long serialVersionUID = 6715142900654758429L;
	
	public LeaveRequestModel (LeaveRequests request) {
		this.id = request.getId();
		this.leaveType = request.getLeaveType();
		this.leaveStartDate = request.getLeaveStartDate();
		this.leaveStartDateType = request.getLeaveStartDateType();
		this.leaveEndDate = request.getLeaveEndDate();
		this.leaveEndDateType = request.getLeaveEndDateType();
		this.leaveDuration = request.getLeaveDuration();
		this.status = request.getStatus();
		this.remarks = request.getRemarks();
		this.absenseReason= request.getAbsenseReason();
	}
	
    private int id;
    private String leaveType;
    private Date leaveStartDate;
    private int leaveStartDateType;
    private Date leaveEndDate;
    private int leaveEndDateType;
    private BigDecimal leaveDuration;
    private String status;
    private String remarks;
    private String absenseReason;
	private String start;
    private String end;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLeaveType() {
		return leaveType;
	}
	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}
	public Date getLeaveStartDate() {
		return leaveStartDate;
	}
	public void setLeaveStartDate(Date leaveStartDate) {
		this.leaveStartDate = leaveStartDate;
	}
	public int getLeaveStartDateType() {
		return leaveStartDateType;
	}
	public void setLeaveStartDateType(int leaveStartDateType) {
		this.leaveStartDateType = leaveStartDateType;
	}
	public Date getLeaveEndDate() {
		return leaveEndDate;
	}
	public void setLeaveEndDate(Date leaveEndDate) {
		this.leaveEndDate = leaveEndDate;
	}
	public int getLeaveEndDateType() {
		return leaveEndDateType;
	}
	public void setLeaveEndDateType(int leaveEndDateType) {
		this.leaveEndDateType = leaveEndDateType;
	}
	public BigDecimal getLeaveDuration() {
		return leaveDuration;
	}
	public void setLeaveDuration(BigDecimal leaveDuration) {
		this.leaveDuration = leaveDuration;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getAbsenseReason() {
		return absenseReason;
	}
	public void setAbsenseReason(String absenseReason) {
		this.absenseReason = absenseReason;
	}
    
	public String getStart() {
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy hh:mm a");
		String result =  sdf.format(this.leaveStartDate);
		this.start = result;
		return start;
	}

	public String getEnd() {
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy hh:mm a");
		String result =  sdf.format(this.leaveEndDate);
		this.end = result;
		return end;
	}
	
	public JSONObject toJSON() {
		JSONObject jo = new JSONObject();
		jo.put("id", this.getId());
		jo.put("title", "Leave");
		SimpleDateFormat sdf1 = new SimpleDateFormat("MM/dd/yyyy");
		jo.put("LeaveType", this.getLeaveType());
		jo.put("AbsenseReason", this.getAbsenseReason());
		jo.put("LeaveStartDate", sdf1.format(this.getLeaveStartDate()));
		jo.put("LeaveStartDateType", this.getLeaveStartDateType());
		jo.put("LeaveEndDate", sdf1.format(this.getLeaveEndDate()));
		jo.put("LeaveEndDateType", this.getLeaveEndDateType());		
		jo.put("Remarks", this.getRemarks());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String startDate = sdf.format(this.getLeaveStartDate());
		String endDate = sdf.format(this.getLeaveEndDate());
		jo.put("start", startDate);
		jo.put("end", endDate);
		return jo;
	}
}
