package com.eshore.university.module.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;
import com.eshore.university.module.service.ITStaffService;
import com.eshore.university.module.pojo.TStaff;


@Controller
@RequestMapping("/module/tstaff")
public class TStaffController extends BaseController<TStaff> {

	@Autowired ITStaffService  tstaffService;

	@ResponseBody
	@RequestMapping(value="getTeachar")
	public List<TStaff> getTeacher(){
		return tstaffService.getTeacher();
	}
	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/module/tstaff/";
	}

	@Override
	protected IBaseService getService() {
		return tstaffService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "university-module-controller>TStaff";
	}

}
