package com.eshore.university.module.dao.impl;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITRoomDAO;
import com.eshore.university.module.pojo.TRoom;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TRoomDAOImpl extends MyBatisDaoImpl<TRoom> implements ITRoomDAO{


}