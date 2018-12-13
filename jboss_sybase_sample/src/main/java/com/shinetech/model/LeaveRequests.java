package com.shinetech.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import net.sf.json.JSONObject;

import java.io.Serializable;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Calendar;

@Entity
@Table(name = "APP_LEAVE_REQUEST", schema = "txeis")
public class LeaveRequests extends BaseEntity implements Serializable {

    private static final long serialVersionUID = 6715142900654758429L;

    @Id
    @GeneratedValue(generator = "leaveRequestGenerator")
    @GenericGenerator(name = "leaveRequestGenerator", strategy = "increment")
    @Column(name = "ID")
    private int id;
    @Column(name = "LeaveType")
    private String leaveType;
    @Column(name = "LeaveStartDate")
    private Date leaveStartDate;
    @Column(name = "LeaveStartDateType") //0 AM, 1 PM, 
    private int leaveStartDateType;
    @Column(name = "LeaveEndDate")
    private Date leaveEndDate;
    @Column(name = "LeaveEndDateType")
    private int leaveEndDateType;
    @Column(name = "LeaveDuration")
    private BigDecimal leaveDuration;
    @Column(name = "Status")
    private String status;
    @Column(name = "Remarks")
    private String remarks;
    @Column(name = "AbsenseReason")
    private String absenseReason;
    
    public String getAbsenseReason() {
		return absenseReason;
	}

	public void setAbsenseReason(String absenseReason) {
		this.absenseReason = absenseReason;
	}

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

	public void setLeaveDuration() {
	        long nd = 1000 * 24 * 60 * 60;
	        long nh = 1000 * 60 * 60;
	        long diff = this.leaveEndDate.getTime() - this.leaveStartDate.getTime();
	        long day = diff / nd;
	        long hour = diff % nd / nh;
	        double difference = day + (hour/8.0);
	        this.leaveDuration = BigDecimal.valueOf(difference) ;
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
