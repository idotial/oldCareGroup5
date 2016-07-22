package com.eshore.university.module.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;

import com.eshore.university.module.service.ITNoticeService;
import com.eshore.university.module.pojo.TNotice;


@Controller
@RequestMapping("/module/tnotice")
public class TNoticeController extends BaseController<TNotice> {

	@Autowired ITNoticeService  tnoticeService;

	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/module/tnotice/";
	}

	@Override
	protected IBaseService getService() {
		return tnoticeService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "university-module-controller>TNotice";
	}

}
