package com.esc20.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.esc20.model.StudentInfoBean;

import java.util.List;

@Repository
public class StudentDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.openSession();
    }

    public List getStudentInfo(){
        Session session = this.getSession();
        String hql = "from StudentInfoBean";
        List res = session.createQuery(hql).list();
        return res;
    }
    public StudentInfoBean getStudentInfoByName(String name){
        Session session = this.getSession();
        String hql = "from StudentInfoBean where name=" + name;
        List<StudentInfoBean> res = session.createQuery(hql).setResultTransformer(Transformers.aliasToBean(StudentInfoBean.class)).list();
        return res.get(0);
    }
}
