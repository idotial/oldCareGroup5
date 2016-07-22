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
@Table(name="t_staff")
public class TStaff implements Serializable {
	private String staffName;//
	private String phone;//
	private String idCard;//
	private String job;//
	private Date upData;//
	private Date offData;//
	private Double salary;//
	private String state;//是否在职

	private Integer staffId;//
	
    @Id
	@Column(name="staff_id" , length=10)
    public Integer getStaffId() {
		return staffId;
    }
    
    public void setStaffId(Integer staffId) {
		this.staffId = staffId;
    }        
	
	@Column(name="staff_name" , length=50)
    public String getStaffName() {
		return staffName;
    }
    
    public void setStaffName(String staffName) {
		this.staffName = staffName;
    }
    
	@Column(name="phone" , length=11)
    public String getPhone() {
		return phone;
    }
    
    public void setPhone(String phone) {
		this.phone = phone;
    }
    
	@Column(name="id_card" , length=18)
    public String getIdCard() {
		return idCard;
    }
    
    public void setIdCard(String idCard) {
		this.idCard = idCard;
    }
    
	@Column(name="job" , length=20)
    public String getJob() {
		return job;
    }
    
    public void setJob(String job) {
		this.job = job;
    }
    
    @Temporal(value =TemporalType.DATE)
	@Column(name="up_data" , length=10)
    public Date getUpData() {
		return upData;
    }
    
    public void setUpData(Date upData) {
		this.upData = upData;
    }
    
    @Temporal(value =TemporalType.DATE)
	@Column(name="off_data" , length=10)
    public Date getOffData() {
		return offData;
    }
    
    public void setOffData(Date offData) {
		this.offData = offData;
    }
    
	@Column(name="salary" , length=22)
    public Double getSalary() {
		return salary;
    }
    
    public void setSalary(Double salary) {
		this.salary = salary;
    }
    
	@Column(name="state" , length=3)
    public String getState() {
		return state;
    }
    
    public void setState(String state) {
		this.state = state;
    }
    
	
}