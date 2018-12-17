package com.esc20.service;

import com.esc20.dao.AppUserDao;
import com.esc20.dao.BaseDao;
import com.esc20.dao.BhrEmpJobDao;
import com.esc20.dao.LeaveRequestDao;
import com.esc20.dao.StudentDao;
import com.esc20.model.AppUserEntity;
import com.esc20.model.BhrEmpJob;
import com.esc20.model.LeaveRequests;
import com.esc20.model.StudentInfoBean;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IndexService {

    private Logger logger = LoggerFactory.getLogger(IndexService.class);

    @Autowired
    private AppUserDao userDao;

    @Autowired
    private LeaveRequestDao leaveRequestDao;

    @Autowired
    private BhrEmpJobDao bhrEmpJobDao;
    
    public String getMessage(){
        String message = "Hello, JBoss has started!";
        logger.info("<<===========================  Logback Testing  ===========================>>");
        logger.info(message);
        AppUserEntity user = userDao.getUserByName("admin");
        return message+user.getuPwd();
    }
    public AppUserEntity getUserPwd(String Name){
        return userDao.getUserByName(Name);
    }
    
    public LeaveRequests getleaveRequestById(int id) {
    	return leaveRequestDao.getleaveRequestById(id);
    }
    public boolean saveLeaveRequest(LeaveRequests request, boolean isUpdate) {
    	return leaveRequestDao.saveLeaveRequest(request,isUpdate);
    }
    public boolean DeleteLeaveRequest(LeaveRequests request) {
    	return leaveRequestDao.DeleteLeaveRequest(request);
    }
    
    public List<LeaveRequests> getLeaveRequests(LeaveRequests request) {
    	return leaveRequestDao.getLeaveRequests(request);
    }
    
    public BhrEmpJob getBhrEmpJobByIds(String cyrNyrFlg, String payFreq, String empNbr, String jobCd) {
    	return bhrEmpJobDao.getBhrEmpJobByIds(cyrNyrFlg, payFreq, empNbr, jobCd);
    }
    
    public List<BhrEmpJob> getBhrEmpJobList() {
    	return bhrEmpJobDao.getBhrEmpJobList();
    }
	public AppUserEntity getUserByEmail(String email) {
		return userDao.getUserByEmail(email);
	}
	public AppUserEntity getUserById(String id) {
		
		return userDao.getUserById(id);
	}
	public void updateUser(AppUserEntity user) {
		userDao.updateUser(user);
	}
}
