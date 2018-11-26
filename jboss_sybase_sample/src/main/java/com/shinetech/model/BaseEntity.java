package com.shinetech.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;

public class BaseEntity implements Serializable{

	
	private static final long serialVersionUID = 6715142900654758429L;
	
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

}
