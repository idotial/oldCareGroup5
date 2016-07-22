package com.eshore.university.module.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;

import com.eshore.university.module.service.ITChangeService;
import com.eshore.university.module.pojo.TChange;


@Controller
@RequestMapping("/module/tchange")
public class TChangeController extends BaseController<TChange> {

	@Autowired ITChangeService  tchangeService;

	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/module/tchange/";
	}

	@Override
	protected IBaseService getService() {
		return tchangeService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "university-module-controller>TChange";
	}

}
