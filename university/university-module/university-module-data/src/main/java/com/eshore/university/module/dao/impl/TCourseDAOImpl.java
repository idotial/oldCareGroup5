package com.eshore.university.module.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITCourseDAO;
import com.eshore.university.module.pojo.TCourse;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TCourseDAOImpl extends MyBatisDaoImpl<TCourse> implements ITCourseDAO{

	@Override
	public List<TCourse> getStateCourse(String state) {
		
		return this.sqlSessionTemplate.selectList("getStateCourse", state);
	}


}