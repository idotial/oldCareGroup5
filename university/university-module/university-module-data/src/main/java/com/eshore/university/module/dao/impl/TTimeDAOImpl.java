package com.eshore.university.module.dao.impl;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITTimeDAO;
import com.eshore.university.module.pojo.TTime;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TTimeDAOImpl extends MyBatisDaoImpl<TTime> implements ITTimeDAO{


}