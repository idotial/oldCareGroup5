package com.eshore.university.module.controller;

import java.util.List;

import org.aspectj.weaver.tools.Trace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;
import com.eshore.university.module.service.ITRoomService;
import com.eshore.university.module.pojo.TRoom;


@Controller
@RequestMapping("/module/troom")
public class TRoomController extends BaseController<TRoom> {

	@Autowired ITRoomService  troomService;

	@ResponseBody
	@RequestMapping(value="getFreeRoom")
	public List<TRoom> getFreeRoom(String timeid){
		return troomService.getFreeRoom(timeid);
	}
	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/module/troom/";
	}

	@Override
	protected IBaseService getService() {
		return troomService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "university-module-controller>TRoom";
	}

}
