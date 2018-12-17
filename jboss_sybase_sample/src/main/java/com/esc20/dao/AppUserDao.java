package com.esc20.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.esc20.model.AppUserEntity;

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

	public AppUserEntity getUserByEmail(String email) {
        Session session = this.getSession();
        String hql = "from AppUserEntity where userEmail = ? " ;
        Query q = session.createQuery(hql);
        q.setParameter(0, email);
        List<AppUserEntity> res = q.list();
        return res.get(0);
	}

	public AppUserEntity getUserById(String id) {
        Session session = this.getSession();
        String hql = "from AppUserEntity where id = ? " ;
        Query q = session.createQuery(hql);
        q.setParameter(0, id);
        List<AppUserEntity> res = q.list();
        return res.get(0);
	}

	public void updateUser(AppUserEntity user) {
		Session session = this.getSession();
        session.update(user);
        session.flush();
	}
}
