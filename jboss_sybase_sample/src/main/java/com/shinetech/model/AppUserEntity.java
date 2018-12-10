package com.shinetech.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "APP_USER", schema = "txeis")
public class AppUserEntity implements Serializable {

    private static final long serialVersionUID = 6715142900654758429L;

    @Id
    @Column(name = "USER_ID")
    private String id;
    @Column(name = "USER_NAME")
    private String uName;
    @Column(name = "USER_PWD")
    private String uPwd;
    @Column(name = "CMP_ID")
    private String companyID;
    @Column(name = "USR_EMAIL")
    private String userEmail;
    
    public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getCompanyID() {
		return companyID;
	}

	public void setCompanyID(String companyID) {
		this.companyID = companyID;
	}

	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuPwd() {
        return uPwd;
    }

    public void setuPwd(String uPwd) {
        this.uPwd = uPwd;
    }
}
