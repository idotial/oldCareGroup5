package com.eshore.university.module.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;

import com.eshore.university.module.service.ITClassService;
import com.eshore.university.module.pojo.TClass;


@Controller
@RequestMapping("/module/tclass")
public class TClassController extends BaseController<TClass> {

	@Autowired ITClassService  tclassService;

	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/module/tclass/";
	}

	@Override
	protected IBaseService getService() {
		return tclassService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "university-module-controller>TClass";
	}

}
