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
@Table(name="t_room")
public class TRoom implements Serializable {
	private String position;//

	private Integer roomId;//
	
    @Id
	@Column(name="room_id" , length=10)
    public Integer getRoomId() {
		return roomId;
    }
    
    public void setRoomId(Integer roomId) {
		this.roomId = roomId;
    }        
	
	@Column(name="position" , length=200)
    public String getPosition() {
		return position;
    }
    
    public void setPosition(String position) {
		this.position = position;
    }
    
	
}