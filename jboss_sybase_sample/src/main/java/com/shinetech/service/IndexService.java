package com.shinetech.service;

import com.shinetech.dao.AppUserDao;
import com.shinetech.dao.BaseDao;
import com.shinetech.dao.LeaveRequestDao;
import com.shinetech.dao.StudentDao;
import com.shinetech.model.AppUserEntity;
import com.shinetech.model.LeaveRequests;
import com.shinetech.model.StudentInfoBean;
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
}
