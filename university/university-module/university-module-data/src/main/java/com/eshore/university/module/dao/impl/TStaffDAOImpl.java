package com.eshore.university.module.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITStaffDAO;
import com.eshore.university.module.pojo.TStaff;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TStaffDAOImpl extends MyBatisDaoImpl<TStaff> implements ITStaffDAO{

	@Override
	public List<TStaff> getStaffState(String state) {
		return this.selectBySqlMapId("getStaffByState", state);
	}

}