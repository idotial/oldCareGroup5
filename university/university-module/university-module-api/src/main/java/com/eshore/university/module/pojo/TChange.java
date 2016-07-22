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
@Table(name="t_change")
public class TChange implements Serializable {
	private Integer oldId;//
	private Integer rawId;//
	private Integer nowId;//
	private String state;//
	private Double pay;//

	private Integer changeId;//
	
    @Id
	@Column(name="change_id" , length=10)
    public Integer getChangeId() {
		return changeId;
    }
    
    public void setChangeId(Integer changeId) {
		this.changeId = changeId;
    }        
	
	@Column(name="old_id" , length=10)
    public Integer getOldId() {
		return oldId;
    }
    
    public void setOldId(Integer oldId) {
		this.oldId = oldId;
    }
    
	@Column(name="raw_id" , length=10)
    public Integer getRawId() {
		return rawId;
    }
    
    public void setRawId(Integer rawId) {
		this.rawId = rawId;
    }
    
	@Column(name="now_id" , length=10)
    public Integer getNowId() {
		return nowId;
    }
    
    public void setNowId(Integer nowId) {
		this.nowId = nowId;
    }
    
	@Column(name="state" , length=4)
    public String getState() {
		return state;
    }
    
    public void setState(String state) {
		this.state = state;
    }
    
	@Column(name="pay" , length=22)
    public Double getPay() {
		return pay;
    }
    
    public void setPay(Double pay) {
		this.pay = pay;
    }
    
	
}