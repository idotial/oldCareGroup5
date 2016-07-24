package com.eshore.university.module.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITAdminDAO;
import com.eshore.university.module.pojo.TAdmin;
import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TAdminDAOImpl extends MyBatisDaoImpl<TAdmin> implements ITAdminDAO{

	@Override
	public List<TAdmin> getAdminsByProperty(TAdmin t) {
		return this.selectBySqlMapId("login", t);
	}

	@Override
	public int countUsername(String username) {
		return this.sqlSessionTemplate.selectOne("checkUsername", username);
	}

}