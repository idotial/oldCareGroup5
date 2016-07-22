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
@Table(name="t_return")
public class TReturn implements Serializable {
	private Integer oldId;//
	private Integer classId;//
	private Date returnTime;//
	private String returnState;//
	private String state;//

	private Integer returnId;//
	
    @Id
	@Column(name="return_id" , length=10)
    public Integer getReturnId() {
		return returnId;
    }
    
    public void setReturnId(Integer returnId) {
		this.returnId = returnId;
    }        
	
	@Column(name="old_id" , length=10)
    public Integer getOldId() {
		return oldId;
    }
    
    public void setOldId(Integer oldId) {
		this.oldId = oldId;
    }
    
	@Column(name="class_id" , length=10)
    public Integer getClassId() {
		return classId;
    }
    
    public void setClassId(Integer classId) {
		this.classId = classId;
    }
    
    @Temporal(value =TemporalType.DATE)
	@Column(name="return_time" , length=10)
    public Date getReturnTime() {
		return returnTime;
    }
    
    public void setReturnTime(Date returnTime) {
		this.returnTime = returnTime;
    }
    
	@Column(name="return_state" , length=4)
    public String getReturnState() {
		return returnState;
    }
    
    public void setReturnState(String returnState) {
		this.returnState = returnState;
    }
    
	@Column(name="state" , length=4)
    public String getState() {
		return state;
    }
    
    public void setState(String state) {
		this.state = state;
    }
    
	
}