package com.eshore.university.module.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;

import com.eshore.university.module.service.ITReturnService;
import com.eshore.university.module.pojo.TReturn;


@Controller
@RequestMapping("/module/treturn")
public class TReturnController extends BaseController<TReturn> {

	@Autowired ITReturnService  treturnService;

	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/module/treturn/";
	}

	@Override
	protected IBaseService getService() {
		return treturnService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "university-module-controller>TReturn";
	}

}
