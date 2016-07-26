package com.eshore.university.module.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;
import com.eshore.university.module.service.ITTermService;
import com.eshore.university.module.pojo.TTerm;


@Controller
@RequestMapping("/module/tterm")
public class TTermController extends BaseController<TTerm> {

	@Autowired ITTermService  ttermService;

	/***
	 * 返回最新的学期信息  从新到旧
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="getLastTerm")
	public List<String> getLastTerm(){
		System.out.println(111);
		return ttermService.getLastTerm();
	}
	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/module/tterm/";
	}

	@Override
	protected IBaseService getService() {
		return ttermService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "university-module-controller>TTerm";
	}

}
