package com.eshore.university.module.dao.impl;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITOldDAO;
import com.eshore.university.module.pojo.TOld;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TOldDAOImpl extends MyBatisDaoImpl<TOld> implements ITOldDAO{


}