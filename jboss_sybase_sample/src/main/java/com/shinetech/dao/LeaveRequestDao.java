package com.shinetech.dao;

import com.shinetech.model.AppUserEntity;
import com.shinetech.model.LeaveRequests;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LeaveRequestDao {
    @Autowired
    private SessionFactory sessionFactory;
    private Session getSession(){
        return sessionFactory.openSession();
    }

    public LeaveRequests getleaveRequestById(int id){
        Session session = this.getSession();
        String hql = "from AppUserEntity where id = ? " ;
        Query q = session.createQuery(hql);
        q.setParameter(0, id);
        List<LeaveRequests> res = q.list();
        return res.get(0);
    }
    
    public boolean saveLeaveRequest(LeaveRequests request){
        Session session = this.getSession();
        try{
        	session.save(request);
        	session.flush();
        }catch(Exception e) {
        	e.printStackTrace();
        	return false;
        }
        return true;
    }
    
    public boolean DeleteLeaveRequest(LeaveRequests request) {
    	Session session = this.getSession();
        try {
        	session.delete(request);
        }catch(Exception e) {
        	e.printStackTrace();
        	return false;
        }
        return true;
    }
}
