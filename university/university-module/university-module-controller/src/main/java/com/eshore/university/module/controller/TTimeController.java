package com.eshore.university.module.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;

import com.eshore.university.module.service.ITTimeService;
import com.eshore.university.module.pojo.TTime;


@Controller
@RequestMapping("/module/ttime")
public class TTimeController extends BaseController<TTime> {

	@Autowired ITTimeService  ttimeService;

	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/module/ttime/";
	}

	@Override
	protected IBaseService getService() {
		return ttimeService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "university-module-controller>TTime";
	}

}
