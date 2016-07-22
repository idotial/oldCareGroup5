package com.eshore.university.module.dao.impl;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITChangeDAO;
import com.eshore.university.module.pojo.TChange;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TChangeDAOImpl extends MyBatisDaoImpl<TChange> implements ITChangeDAO{


}