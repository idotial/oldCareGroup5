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
@Table(name="t_term")
public class TTerm implements Serializable {
	private String termName;//
	private Date startData;//
	private Date endData;//

	private Integer termId;//
	
    @Id
	@Column(name="term_id" , length=10)
    public Integer getTermId() {
		return termId;
    }
    
    public void setTermId(Integer termId) {
		this.termId = termId;
    }        
	
	@Column(name="term_name" , length=50)
    public String getTermName() {
		return termName;
    }
    
    public void setTermName(String termName) {
		this.termName = termName;
    }
    
    @Temporal(value =TemporalType.DATE)
	@Column(name="start_data" , length=10)
    public Date getStartData() {
		return startData;
    }
    
    public void setStartData(Date startData) {
		this.startData = startData;
    }
    
    @Temporal(value =TemporalType.DATE)
	@Column(name="end_data" , length=10)
    public Date getEndData() {
		return endData;
    }
    
    public void setEndData(Date endData) {
		this.endData = endData;
    }
    
	
}