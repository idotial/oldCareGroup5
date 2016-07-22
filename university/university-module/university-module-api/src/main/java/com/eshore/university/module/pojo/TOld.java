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
@Table(name="t_old")
public class TOld implements Serializable {
	private String username;//
	private String password;//
	private String phone;//
	private String name;//
	private Date birth;//
	private String physical;//
	private String sex;//
	private Double remainder;//余额
	private String urgent;//紧急联系人（子女联系人）

	private Integer oldId;//
	
    @Id
	@Column(name="old_id" , length=10)
    public Integer getOldId() {
		return oldId;
    }
    
    public void setOldId(Integer oldId) {
		this.oldId = oldId;
    }        
	
	@Column(name="username" , length=50)
    public String getUsername() {
		return username;
    }
    
    public void setUsername(String username) {
		this.username = username;
    }
    
	@Column(name="password" , length=50)
    public String getPassword() {
		return password;
    }
    
    public void setPassword(String password) {
		this.password = password;
    }
    
	@Column(name="phone" , length=11)
    public String getPhone() {
		return phone;
    }
    
    public void setPhone(String phone) {
		this.phone = phone;
    }
    
	@Column(name="name" , length=50)
    public String getName() {
		return name;
    }
    
    public void setName(String name) {
		this.name = name;
    }
    
    @Temporal(value =TemporalType.DATE)
	@Column(name="birth" , length=10)
    public Date getBirth() {
		return birth;
    }
    
    public void setBirth(Date birth) {
		this.birth = birth;
    }
    
	@Column(name="physical" , length=50)
    public String getPhysical() {
		return physical;
    }
    
    public void setPhysical(String physical) {
		this.physical = physical;
    }
    
	@Column(name="sex" , length=2)
    public String getSex() {
		return sex;
    }
    
    public void setSex(String sex) {
		this.sex = sex;
    }
    
	@Column(name="remainder" , length=22)
    public Double getRemainder() {
		return remainder;
    }
    
    public void setRemainder(Double remainder) {
		this.remainder = remainder;
    }
    
	@Column(name="urgent" , length=11)
    public String getUrgent() {
		return urgent;
    }
    
    public void setUrgent(String urgent) {
		this.urgent = urgent;
    }
    
	
}