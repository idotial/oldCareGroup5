package com.eshore.university.module.service;

import java.util.List;

import com.eshore.khala.core.api.IBaseService;
import com.eshore.university.module.pojo.TTerm;

/**
 * 
 */
public interface ITTermService extends IBaseService<TTerm> {

	/***
	 * 返回最新的学期的记录
	 * @return
	 */
	public List<String> getLastTerm();
}