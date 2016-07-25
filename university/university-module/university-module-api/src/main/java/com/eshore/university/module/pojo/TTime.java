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
@Table(name="t_time")
public class TTime implements Serializable {
	private String startTime;//
	private String endTime;//
	private String info;//

	private Integer timeId;//
	
    @Id
	@Column(name="time_id" , length=10)
    public Integer getTimeId() {
		return timeId;
    }
    
    public void setTimeId(Integer timeId) {
		this.timeId = timeId;
    }        
	
	@Column(name="start_time" , length=20)
    public String getStartTime() {
		return startTime;
    }
    
    public void setStartTime(String startTime) {
		this.startTime = startTime;
    }
    
	@Column(name="end_time" , length=20)
    public String getEndTime() {
		return endTime;
    }
    
    public void setEndTime(String endTime) {
		this.endTime = endTime;
    }
    
	@Column(name="info" , length=200)
    public String getInfo() {
		return info;
    }
    
    public void setInfo(String info) {
		this.info = info;
    }
    
	
}