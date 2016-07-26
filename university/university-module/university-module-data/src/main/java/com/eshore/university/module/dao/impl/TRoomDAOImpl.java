package com.eshore.university.module.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITRoomDAO;
import com.eshore.university.module.pojo.TRoom;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TRoomDAOImpl extends MyBatisDaoImpl<TRoom> implements ITRoomDAO{

	@Override
	public List<TRoom> getFreeRoom(String timeid) {
		return this.selectBySqlMapId("getFreeRoom", timeid);
	}
}