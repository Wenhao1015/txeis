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

    private String leaveStartDateString;
    private String leaveEndDateString;
    
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
		 	Calendar cal1 = Calendar.getInstance();
	        cal1.setTime(this.leaveStartDate);
	        Calendar cal2 = Calendar.getInstance();
	        cal2.setTime(this.leaveEndDate);
	        int start= cal1.get(Calendar.DAY_OF_YEAR);
	        int end = cal2.get(Calendar.DAY_OF_YEAR);
	        int year1 = cal1.get(Calendar.YEAR);
	        int year2 = cal2.get(Calendar.YEAR);
	        int timeDistance = 0 ;
	        if(year1 != year2)
	        {  
	            for(int i = year1 ; i < year2 ; i ++)
	            {
	                if(i%4==0 && i%100!=0 || i%400==0)  
	                {
	                    timeDistance += 366;
	                }
	                else
	                {
	                    timeDistance += 365;
	                }
	            }
	            
	        }
	        end += timeDistance;
	        double difference = 0.0;
	        if(start == end) { //same day
	        	if(this.leaveStartDateType==0&&this.leaveEndDateType==0)//AM Leave
	        		difference = 0.5;
	        	else if(this.leaveStartDateType==1&&this.leaveEndDateType==1)//PM Leave
	        		difference = 0.5;
	        	else if(this.leaveStartDateType==0&&this.leaveEndDateType==1) //full day
	        		difference = 1.0;
	        }else {
	        	difference = end-start+1;
	        	if(this.leaveEndDateType==0)// till end date AM
	        		difference -= 0.5;
	        	else if(this.leaveStartDateType==1)//from start date PM
	        		difference -= 0.5;
	        }
	        
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

	public String getLeaveStartDateString() {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		String result =  sdf.format(this.leaveStartDate);
		this.leaveStartDateString = result;
		return leaveStartDateString;
	}

	public String getLeaveEndDateString() {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		String result =  sdf.format(this.leaveEndDate);
		this.leaveEndDateString = result;
		return leaveEndDateString;
	}

	public JSONObject toJSON() {
		JSONObject jo = new JSONObject();
		jo.put("id", this.getId());
		jo.put("title", "Leave");
		SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
		jo.put("LeaveType", this.getLeaveType());
		jo.put("LeaveStartDate", sdf1.format(this.getLeaveStartDate()));
		jo.put("LeaveStartDateType", this.getLeaveStartDateType());
		jo.put("LeaveEndDate", sdf1.format(this.getLeaveEndDate()));
		jo.put("LeaveEndDateType", this.getLeaveEndDateType());		
		jo.put("Remarks", this.getRemarks());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String startDate = sdf.format(this.getLeaveStartDate());
		if(("0").equals(this.getLeaveStartDateType()+""))
			startDate +="T00:00:00";
		else
			startDate += "T12:00:00";
		String endDate = sdf.format(this.getLeaveEndDate());
		if(("0").equals(this.getLeaveEndDateType()+""))
			endDate +="T11:59:59";
		else
			endDate += "T23:59:59";
		jo.put("start", startDate);
		jo.put("end", endDate);
		return jo;
	}
}
