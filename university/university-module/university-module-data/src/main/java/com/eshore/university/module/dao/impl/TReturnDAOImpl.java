package com.eshore.university.module.dao.impl;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITReturnDAO;
import com.eshore.university.module.pojo.TReturn;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TReturnDAOImpl extends MyBatisDaoImpl<TReturn> implements ITReturnDAO{


}