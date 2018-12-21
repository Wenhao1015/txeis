package com.esc20.model;

import org.springframework.context.annotation.Bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name="dbo.STUDENT_INFO", schema = "txeis")
public class StudentInfoBean implements Serializable {

    private static final long serialVersionUID = 8153550686585922384L;
    @Id
    @Column(name="ID")
    private String id;
    @Column(name = "NAME")
    private String name;
    @Column(name = "INFO")
    private String info;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
