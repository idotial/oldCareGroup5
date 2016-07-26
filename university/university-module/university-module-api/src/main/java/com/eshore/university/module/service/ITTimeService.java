package com.eshore.university.module.service;

import java.util.List;

import com.eshore.khala.core.api.IBaseService;
import com.eshore.university.module.pojo.TTime;

/**
 * 
 */
public interface ITTimeService extends IBaseService<TTime> {

	/***
	 * 
	 * @return
	 */
	public List<TTime> getTime(int timeid);
}