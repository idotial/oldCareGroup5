package com.eshore.university.module.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;

import com.eshore.university.module.service.ITRegistService;
import com.eshore.university.module.pojo.TRegist;


@Controller
@RequestMapping("/module/tregist")
public class TRegistController extends BaseController<TRegist> {

	@Autowired ITRegistService  tregistService;

	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/module/tregist/";
	}

	@Override
	protected IBaseService getService() {
		return tregistService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "university-module-controller>TRegist";
	}

}
