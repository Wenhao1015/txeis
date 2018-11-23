package com.shinetech.service;

import com.shinetech.dao.AppUserDao;
import com.shinetech.dao.BaseDao;
import com.shinetech.dao.StudentDao;
import com.shinetech.model.AppUserEntity;
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
}
