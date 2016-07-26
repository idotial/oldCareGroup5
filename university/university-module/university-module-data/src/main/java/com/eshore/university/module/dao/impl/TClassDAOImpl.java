package com.eshore.university.module.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITClassDAO;
import com.eshore.university.module.pojo.TClass;
import com.eshore.university.module.pojo.TClassInfo;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;

@Repository
public class TClassDAOImpl extends MyBatisDaoImpl<TClass> implements ITClassDAO{

	@Override
	public List<TClassInfo> findAll() {
		return this.selectBySqlMapId("findAll", null);
	}
	
}