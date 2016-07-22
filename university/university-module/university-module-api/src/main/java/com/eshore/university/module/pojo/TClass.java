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
@Table(name="t_class")
public class TClass implements Serializable {
	private Integer courseId;//课程ID
	private Integer termId;//学期ID
	private Integer staffId;//教师ID
	private Integer roomId;//教室ID
	private Integer totalNum;//
	private Integer enteredNum;//
	private String state;//

	private Integer classId;//
	
    @Id
	@Column(name="class_id" , length=10)
    public Integer getClassId() {
		return classId;
    }
    
    public void setClassId(Integer classId) {
		this.classId = classId;
    }        
	
	@Column(name="course_id" , length=10)
    public Integer getCourseId() {
		return courseId;
    }
    
    public void setCourseId(Integer courseId) {
		this.courseId = courseId;
    }
    
	@Column(name="term_id" , length=10)
    public Integer getTermId() {
		return termId;
    }
    
    public void setTermId(Integer termId) {
		this.termId = termId;
    }
    
	@Column(name="staff_id" , length=10)
    public Integer getStaffId() {
		return staffId;
    }
    
    public void setStaffId(Integer staffId) {
		this.staffId = staffId;
    }
    
	@Column(name="room_id" , length=10)
    public Integer getRoomId() {
		return roomId;
    }
    
    public void setRoomId(Integer roomId) {
		this.roomId = roomId;
    }
    
	@Column(name="total_num" , length=10)
    public Integer getTotalNum() {
		return totalNum;
    }
    
    public void setTotalNum(Integer totalNum) {
		this.totalNum = totalNum;
    }
    
	@Column(name="entered_num" , length=10)
    public Integer getEnteredNum() {
		return enteredNum;
    }
    
    public void setEnteredNum(Integer enteredNum) {
		this.enteredNum = enteredNum;
    }
    
	@Column(name="state" , length=4)
    public String getState() {
		return state;
    }
    
    public void setState(String state) {
		this.state = state;
    }
    
	
}