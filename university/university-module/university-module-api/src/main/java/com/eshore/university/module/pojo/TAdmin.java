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
@Table(name="t_admin")
public class TAdmin implements Serializable {
	private String username;//zhanghao 
	private String password;//密码
	private Date createTime;//创建时间
	private Date changeTime;//更改时间
	private Integer power;//

	private Integer aid;//管理员ID
	
    @Id
	@Column(name="aid" , length=10)
    public Integer getAid() {
		return aid;
    }
    
    public void setAid(Integer aid) {
		this.aid = aid;
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
    
    @Temporal(value =TemporalType.DATE)
	@Column(name="create_time" , length=10)
    public Date getCreateTime() {
		return createTime;
    }
    
    public void setCreateTime(Date createTime) {
		this.createTime = createTime;
    }
    
    @Temporal(value =TemporalType.DATE)
	@Column(name="change_time" , length=10)
    public Date getChangeTime() {
		return changeTime;
    }
    
    public void setChangeTime(Date changeTime) {
		this.changeTime = changeTime;
    }
    
	@Column(name="power" , length=10)
    public Integer getPower() {
		return power;
    }
    
    public void setPower(Integer power) {
		this.power = power;
    }
    
	
}