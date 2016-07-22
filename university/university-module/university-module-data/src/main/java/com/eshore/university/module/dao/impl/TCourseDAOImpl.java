package com.eshore.university.module.dao.impl;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITCourseDAO;
import com.eshore.university.module.pojo.TCourse;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TCourseDAOImpl extends MyBatisDaoImpl<TCourse> implements ITCourseDAO{


}