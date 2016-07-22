package com.eshore.university.module.dao.impl;

import org.springframework.stereotype.Repository;

import com.eshore.university.module.dao.ITNoticeDAO;
import com.eshore.university.module.pojo.TNotice;
import com.eshore.khala.core.data.mybatis.dao.impl.MyBatisDaoImpl;


@Repository
public class TNoticeDAOImpl extends MyBatisDaoImpl<TNotice> implements ITNoticeDAO{


}