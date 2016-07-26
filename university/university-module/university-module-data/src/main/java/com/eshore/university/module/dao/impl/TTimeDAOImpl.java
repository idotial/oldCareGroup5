package com.eshore.university.module.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITTimeDAO;
import com.eshore.university.module.pojo.TTime;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TTimeDAOImpl extends MyBatisDaoImpl<TTime> implements ITTimeDAO{

	@Override
	public List<TTime> getTime(int timeid) {
		return this.selectBySqlMapId("selectTime", timeid);
	}
}