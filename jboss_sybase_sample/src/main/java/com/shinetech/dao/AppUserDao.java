package com.shinetech.dao;

import com.shinetech.model.AppUserEntity;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AppUserDao {
    @Autowired
    private SessionFactory sessionFactory;
    private Session getSession(){
        return sessionFactory.openSession();
    }

    public AppUserEntity getUserByName(String name){
        Session session = this.getSession();
        String hql = "from AppUserEntity where uName = ? " ;
        Query q = session.createQuery(hql);
        q.setParameter(0, name);
        List<AppUserEntity> res = q.list();
        return res.get(0);
    }
}
