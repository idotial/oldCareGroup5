package com.eshore.university.module.pojo;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

import java.io.Serializable;
import java.util.Date;

/**
 * Auto Generated Entity
 * 
 * @author Khala 
 * 
 */
@Entity
@Table(name="t_regist")
public class TRegist implements Serializable {
	private Integer classId;//
	private Integer oldId;//
	private Date registTime;//
	private String state;//
	private Integer pay;//

	private Integer registId;//
	
    @Id
	@Column(name="regist_id" , length=10)
    public Integer getRegistId() {
		return registId;
    }
    
    public void setRegistId(Integer registId) {
		this.registId = registId;
    }        
	
	@Column(name="class_id" , length=10)
    public Integer getClassId() {
		return classId;
    }
    
    public void setClassId(Integer classId) {
		this.classId = classId;
    }
    
	@Column(name="old_id" , length=10)
    public Integer getOldId() {
		return oldId;
    }
    
    public void setOldId(Integer oldId) {
		this.oldId = oldId;
    }
    
    @Temporal(value =TemporalType.DATE)
	@Column(name="regist_time" , length=10)
    public Date getRegistTime() {
		return registTime;
    }
    
    public void setRegistTime(Date registTime) {
		this.registTime = registTime;
    }
    
	@Column(name="state" , length=3)
    public String getState() {
		return state;
    }
    
    public void setState(String state) {
		this.state = state;
    }
    
	@Column(name="pay" , length=10)
    public Integer getPay() {
		return pay;
    }
    
    public void setPay(Integer pay) {
		this.pay = pay;
    }
    
	
}