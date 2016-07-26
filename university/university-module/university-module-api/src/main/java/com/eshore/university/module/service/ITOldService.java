package com.eshore.university.module.service;

import java.util.List;

import com.eshore.khala.core.api.IBaseService;
import com.eshore.university.module.pojo.TOld;

/**
 * 
 */
public interface ITOldService extends IBaseService<TOld> {

	public List<TOld> checkLogin(TOld t);
	public boolean checkUsername(String username);
	public TOld oldLogin(TOld t);
}