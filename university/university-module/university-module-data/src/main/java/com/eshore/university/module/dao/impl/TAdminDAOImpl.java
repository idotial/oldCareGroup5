package com.eshore.university.module.dao.impl;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITAdminDAO;
import com.eshore.university.module.pojo.TAdmin;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TAdminDAOImpl extends MyBatisDaoImpl<TAdmin> implements ITAdminDAO{


}