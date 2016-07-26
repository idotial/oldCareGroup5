package com.eshore.university.module.dao;

import java.util.List;

import com.eshore.university.module.pojo.TTerm;
import com.eshore.khala.core.data.api.dao.IBaseDao;
/**
*generated by tools 
*
*/
public interface ITTermDAO extends IBaseDao<TTerm> {

	/***
	 * 返回学期记录按从最新到最后排序
	 * @return
	 */
	public List<String> getLastTerm();
}