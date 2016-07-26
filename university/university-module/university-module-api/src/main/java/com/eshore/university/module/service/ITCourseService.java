package com.eshore.university.module.service;

import java.util.List;

import com.eshore.khala.core.api.IBaseService;
import com.eshore.university.module.pojo.TCourse;

/**
 * 
 */
public interface ITCourseService extends IBaseService<TCourse> {

	/***
	 * 获取所有的科目名信息
	 * @return
	 */
	public List<TCourse> getAllKindCourse();
}