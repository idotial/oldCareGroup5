package com.eshore.university.module.dao.impl;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITClassDAO;
import com.eshore.university.module.pojo.TClass;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TClassDAOImpl extends MyBatisDaoImpl<TClass> implements ITClassDAO{


}