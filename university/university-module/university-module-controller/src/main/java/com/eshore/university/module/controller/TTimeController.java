package com.eshore.university.module.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;
import com.eshore.university.module.service.ITTimeService;
import com.eshore.university.module.pojo.TTime;


@Controller
@RequestMapping("/module/ttime")
public class TTimeController extends BaseController<TTime> {

	@Autowired ITTimeService  ttimeService;

	/**
	 * 返回除参数以外的时间的集合
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="initTime")
	public List<TTime> getTime(){
			return ttimeService.getTime(0);
	}
	
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
