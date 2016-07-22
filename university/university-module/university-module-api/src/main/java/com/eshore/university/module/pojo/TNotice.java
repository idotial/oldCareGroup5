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
@Table(name="t_notice")
public class TNotice implements Serializable {
	private String title;//
	private String content;//

	private Integer noticeId;//
	
    @Id
	@Column(name="notice_id" , length=10)
    public Integer getNoticeId() {
		return noticeId;
    }
    
    public void setNoticeId(Integer noticeId) {
		this.noticeId = noticeId;
    }        
	
	@Column(name="title" , length=200)
    public String getTitle() {
		return title;
    }
    
    public void setTitle(String title) {
		this.title = title;
    }
    
	@Column(name="content" , length=10000)
    public String getContent() {
		return content;
    }
    
    public void setContent(String content) {
		this.content = content;
    }
    
	
}