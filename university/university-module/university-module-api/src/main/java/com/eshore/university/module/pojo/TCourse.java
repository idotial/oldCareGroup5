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
@Table(name="t_course")
public class TCourse implements Serializable {
	private String courseName;//课程名
	private Double courseCost;//课程费用
	private String introduction;//课程介绍
	private String state;//状态

	private Integer courseId;//
	
    @Id
	@Column(name="course_id" , length=10)
    public Integer getCourseId() {
		return courseId;
    }
    
    public void setCourseId(Integer courseId) {
		this.courseId = courseId;
    }        
	
	@Column(name="course_name" , length=50)
    public String getCourseName() {
		return courseName;
    }
    
    public void setCourseName(String courseName) {
		this.courseName = courseName;
    }
    
	@Column(name="course_cost" , length=22)
    public Double getCourseCost() {
		return courseCost;
    }
    
    public void setCourseCost(Double courseCost) {
		this.courseCost = courseCost;
    }
    
	@Column(name="introduction" , length=500)
    public String getIntroduction() {
		return introduction;
    }
    
    public void setIntroduction(String introduction) {
		this.introduction = introduction;
    }
    
	@Column(name="state" , length=3)
    public String getState() {
		return state;
    }
    
    public void setState(String state) {
		this.state = state;
    }
    
	
}