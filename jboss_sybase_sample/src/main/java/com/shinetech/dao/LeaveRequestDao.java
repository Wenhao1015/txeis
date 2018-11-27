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
        String hql = "from LeaveRequests where id = ? " ;
        Query q = session.createQuery(hql);
        q.setParameter(0, id);
        List<LeaveRequests> res = q.list();
        return res.get(0);
    }

	public List<LeaveRequests> getLeaveRequests(LeaveRequests request){
        Session session = this.getSession();
        String hql = "from LeaveRequests where 1=1";
        if(request.getLeaveType()!=null && !request.getLeaveType().equals("")) 
        	hql+= " and LeaveType = :type";
        if(request.getLeaveStartDate()!=null)
        	hql+=" and LeaveStartDate >= :startDate";
        if(request.getLeaveEndDate()!=null)
        	hql+=" and LeaveEndDate <= :endDate";
        Query q = session.createQuery(hql);
        if(request.getLeaveType()!=null && !request.getLeaveType().equals("")) 
        	q.setParameter("type", request.getLeaveType());
        if(request.getLeaveStartDate()!=null)
        	q.setParameter("startDate", request.getLeaveStartDate());
        if(request.getLeaveEndDate()!=null)
        	q.setParameter("endDate", request.getLeaveEndDate());
        return q.list();
    }
    
    public boolean saveLeaveRequest(LeaveRequests request,boolean isUpdate){
        Session session = this.getSession();
        try{
        	if(isUpdate)
        		session.update(request);
        	else
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
        	session.flush();
        }catch(Exception e) {
        	e.printStackTrace();
        	return false;
        }
        return true;
    }
}
