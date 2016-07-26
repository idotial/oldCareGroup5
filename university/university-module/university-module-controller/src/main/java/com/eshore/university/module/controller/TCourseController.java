package com.eshore.university.module.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;
import com.eshore.university.module.service.ITCourseService;
import com.eshore.university.module.pojo.TCourse;


@Controller
@RequestMapping("/module/tcourse")
public class TCourseController extends BaseController<TCourse> {

	@Autowired ITCourseService  tcourseService;

	@ResponseBody
	@RequestMapping("getCourse")
	public List<TCourse> getCourse(){
		return this.tcourseService.getAllKindCourse();
	}
	
	@RequestMapping("addClass")
	public String initAddClass(){
		return null;
	}
	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/module/tcourse/";
	}

	@Override
	protected IBaseService getService() {
		return tcourseService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "university-module-controller>TCourse";
	}

}
