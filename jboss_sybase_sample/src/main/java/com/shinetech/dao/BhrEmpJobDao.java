package com.shinetech.dao;

import com.shinetech.model.AppUserEntity;
import com.shinetech.model.BhrEmpJob;
import com.shinetech.model.LeaveRequests;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BhrEmpJobDao {
    @Autowired
    private SessionFactory sessionFactory;
    private Session getSession(){
        return sessionFactory.openSession();
    }


	public List<BhrEmpJob> getBhrEmpJobList(){
        Session session = this.getSession();
        String hql = "from BhrEmpJob";
        Query q = session.createQuery(hql);
        return q.list();
    }
	
	public BhrEmpJob getBhrEmpJobByIds(String cyrNyrFlg, String payFreq, String empNbr, String jobCd){
        Session session = this.getSession();
        String hql = "from BhrEmpJob where cyrNyrflg =: cyrNyrflg and payFreq =: payFreq and empNbr =: empNbr and jobCd =: jobCd";
        Query q = session.createQuery(hql);
        q.setParameter("cyrNyrflg", cyrNyrFlg);
        q.setParameter("payFreq", payFreq);
        q.setParameter("empNbr", empNbr);
        q.setParameter("jobCd", jobCd);
        List<BhrEmpJob> res = q.list();
        return res.get(0);
    }
}
