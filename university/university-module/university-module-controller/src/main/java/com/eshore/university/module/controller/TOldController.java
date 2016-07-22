package com.eshore.university.module.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;

import com.eshore.university.module.service.ITOldService;
import com.eshore.university.module.pojo.TOld;


@Controller
@RequestMapping("/module/told")
public class TOldController extends BaseController<TOld> {

	@Autowired ITOldService  toldService;

	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/module/told/";
	}

	@Override
	protected IBaseService getService() {
		return toldService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "university-module-controller>TOld";
	}

}
