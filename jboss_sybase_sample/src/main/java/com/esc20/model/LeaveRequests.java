package com.esc20.model;

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
@Table(name = "dbo.APP_LEAVE_REQUEST", schema = "txeis")
public class LeaveRequests implements Serializable {

    private static final long serialVersionUID = 6715142900654758429L;

    @Id
    @GeneratedValue(generator = "leaveRequestGenerator")
    @GenericGenerator(name = "leaveRequestGenerator", strategy = "increment")
    @Column(name = "ID")
    private Integer id;
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
	@Column(name = "CreatedAt")
    private Date CreatedAt;
    @Column(name = "CreatedBy")
    private String CreatedBy;
    @Column(name = "UpdatedAt")
    private Date UpdatedAt;
    @Column(name = "UpdatedBy")
    private String UpdatedBy;
    
	public Date getCreatedAt() {
		return CreatedAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.CreatedAt = createdAt;
	}
	public String getCreatedBy() {
		return this.CreatedBy;
	}
	public void setCreatedBy(String createdBy) {
		this.CreatedBy = createdBy;
	}
	public Date getUpdatedAt() {
		return this.UpdatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.UpdatedAt = updatedAt;
	}
	public String getUpdatedBy() {
		return this.UpdatedBy;
	}
	public void setUpdatedBy(String updatedBy) {
		this.UpdatedBy = updatedBy;
	}
    
    public String getAbsenseReason() {
		return absenseReason;
	}

	public void setAbsenseReason(String absenseReason) {
		this.absenseReason = absenseReason;
	}
    
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
	public void emptyID() {
		// TODO Auto-generated method stub
		this.id = null;
	}
}
