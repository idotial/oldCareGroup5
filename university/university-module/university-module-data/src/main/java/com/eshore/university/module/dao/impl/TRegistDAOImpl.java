package com.eshore.university.module.dao.impl;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITRegistDAO;
import com.eshore.university.module.pojo.TRegist;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TRegistDAOImpl extends MyBatisDaoImpl<TRegist> implements ITRegistDAO{


}