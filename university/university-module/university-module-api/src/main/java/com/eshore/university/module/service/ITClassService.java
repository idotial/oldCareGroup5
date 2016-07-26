package com.eshore.university.module.service;

import java.util.List;

import com.eshore.khala.core.api.IBaseService;
import com.eshore.university.module.pojo.TClass;
import com.eshore.university.module.pojo.TClassInfo;

/**
 * 
 */
public interface ITClassService extends IBaseService<TClass> {

	/**
	 * 查询所有的上架课程的信息
	 * @return
	 */
	public List<TClassInfo> findAllClassInfo();
}