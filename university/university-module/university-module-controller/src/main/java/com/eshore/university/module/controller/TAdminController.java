package com.eshore.university.module.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;
import com.eshore.university.module.service.ITAdminService;
import com.eshore.university.module.pojo.TAdmin;


@Controller
@RequestMapping("/module/tadmin")
public class TAdminController extends BaseController<TAdmin> {

	@Autowired ITAdminService  tadminService;

	/***
	 * 管理员登陆
	 * @param admin
	 * @return
	 */
	@RequestMapping(value="adminLogin")
	public String test(TAdmin admin){
//		admin.setCreateTime(new Date());
//		admin.setPower(0);
//		tadminService.save(admin);
//		utils.setRequestAttribute("tadmin", admin);
//		System.out.println(admin.getUsername()+" "+admin.getPassword());
		
//		admin.setAid(5);
//		tadminService.delete(admin.getAid());
		List<TAdmin> list = tadminService.checkLogin(admin);
		if(list.size() == 1){
			utils.setSessionAttribute("admin", list.get(0));
			return "adminMain";
		}else{
			utils.setRequestAttribute("err", 1);
			return "index";
		}
	}
	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/module/tadmin/";
	}

	@Override
	protected IBaseService getService() {
		return tadminService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "university-module-controller>TAdmin";
	}

}
