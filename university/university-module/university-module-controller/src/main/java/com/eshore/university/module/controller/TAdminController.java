package com.eshore.university.module.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;
import com.eshore.university.module.pojo.TAdmin;
import com.eshore.university.module.service.ITAdminService;
import com.eshore.university.module.util.PasswordCreate;


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
	public String adminLogin(TAdmin admin,HttpServletRequest req){
//注册
//		admin.setCreateTime(new Date());
//		admin.setPower(0);
//		admin.setPassword(PasswordCreate.getPassword(admin.getPassword()));
//		tadminService.save(admin);
//		utils.setRequestAttribute("tadmin", admin);
//		System.out.println(admin.getUsername()+" "+admin.getPassword());
//		return null;
//删除
//		admin.setAid(5);
//		tadminService.delete(admin.getAid());
//登陆		
		String rmb = req.getParameter("rmb");
		System.out.println(rmb);
		admin.setPassword(PasswordCreate.getPassword(admin.getPassword()));
		List<TAdmin> list = tadminService.checkLogin(admin);
		if(list.size() == 1){
			utils.setSessionAttribute("admin", list.get(0));
			return "index";
		}else{
			utils.setRequestAttribute("err", 1);
			return "redirect:/index.jsp";
		}
	}
	
	@RequestMapping(value="checkUsername")
	public boolean checkUsername(){
		System.out.println("aaaa");
		return false;
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
