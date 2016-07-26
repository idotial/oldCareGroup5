package com.eshore.university.module.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITTermDAO;
import com.eshore.university.module.pojo.TTerm;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TTermDAOImpl extends MyBatisDaoImpl<TTerm> implements ITTermDAO{

	public List<String> getLastTerm() {
		return this.selectBySqlMapId("getLastTerm", null);
	}
}