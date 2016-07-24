package com.eshore.university.module.service;

import java.util.List;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.university.module.pojo.TAdmin;

/**
 * 
 */
public interface ITAdminService extends IBaseService<TAdmin> {

	/***
	 * 检查登陆的用户名和密码是否正确
	 * @param page 分页信息
	 * @param t	用户信息
	 */
	public List<TAdmin> checkLogin(TAdmin t);
	
	/***
	 * 检查用户名是否可用
	 * @param username
	 * @return
	 */
	public boolean checkUsername(String username);
	
}