package com.eshore.university.module.service;

import java.util.List;

import com.eshore.khala.core.api.IBaseService;
import com.eshore.university.module.pojo.TStaff;

/**
 * 
 */
public interface ITStaffService extends IBaseService<TStaff> {

	/***
	 * 获取教师列表
	 * @return
	 */
	public List<TStaff> getTeacher();
}