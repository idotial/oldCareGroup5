package com.eshore.university.module.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;
import com.eshore.university.module.service.ITClassService;
import com.eshore.university.module.pojo.TClass;
import com.eshore.university.module.pojo.TClassInfo;


@Controller
@RequestMapping("/module/tclass")
public class TClassController extends BaseController<TClass> {

	@Autowired ITClassService  tclassService;

	@ResponseBody
	@RequestMapping(value="findAllClassInfo")
	public List<TClassInfo> findAllClassInfo(){
		return tclassService.findAllClassInfo();
	}
	
	@RequestMapping(value="changeType/{type}/{id}")
	public String changeType(@PathVariable("type")String type,@PathVariable("id")Integer id){
		TClass t = tclassService.get(id);
		if(type.equals("1")){		//1开课 2结课
			t.setState("已开课");
		}else if(type.equals("2")){
			t.setState("已结课");
		}
		tclassService.update(t);
		return "redirect:/module/tclass/list";
	}
	
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
