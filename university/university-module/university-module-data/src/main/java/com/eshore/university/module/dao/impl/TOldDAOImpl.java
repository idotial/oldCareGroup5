package com.eshore.university.module.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITOldDAO;
import com.eshore.university.module.pojo.TAdmin;
import com.eshore.university.module.pojo.TOld;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TOldDAOImpl extends MyBatisDaoImpl<TOld> implements ITOldDAO{

	@Override
	public List<TOld> getOldsByProperty(TOld t) {
		return this.selectBySqlMapId("oldlogin", t);
	}

	@Override
	public int countUsername(String username) {
		return this.sqlSessionTemplate.selectOne("oldcheckUsername", username);
	}
}