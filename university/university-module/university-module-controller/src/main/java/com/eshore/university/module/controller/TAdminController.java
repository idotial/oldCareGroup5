package com.eshore.university.module.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eshore.khala.common.model.PageConfig;
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
	public String adminLogin(TAdmin admin,HttpServletRequest req,HttpServletResponse resp){
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
		String pwd = admin.getPassword();
		TAdmin ta = tadminService.adminLogin(admin);
		if(ta!=null){			
			if(rmb != null){
				Cookie cook1 = new Cookie("username", admin.getUsername());
				Cookie cook2 = new Cookie("password", pwd);
				cook1.setMaxAge(60*60*24*30);
				cook2.setMaxAge(60*60*24*30);
				resp.addCookie(cook1);
				resp.addCookie(cook2);
			}
			utils.setSessionAttribute("admin", ta);
			return "index";
		}else{			
			return "redirect:/index.jsp";
		}
	}
	
	/***
	 * 验证用户名是否可用
	 * @param username
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="checkUsername")
	public Map<String,String> checkUsername(String username){
		boolean check = tadminService.checkUsername(username);
		System.out.println(check);
		Map<String, String> m = new HashMap<String, String>();
		if(check){
			m.put("result", "true");
			return m;
		}else{
			m.put("result", "false");
			return m;
		}
	}
	
	/**
	 * 新增一个管理员
	 * @param admin
	 * @return
	 */
	@RequestMapping(value="addAdmin")
	public String addAdmin(TAdmin admin){
		try {			
			admin.setPassword(PasswordCreate.getPassword(admin.getPassword()));//密码加密
			admin.setPower(0);
			admin.setCreateTime(new Date());
			tadminService.save(admin);
			return "redirect:"+this.getBasePath()+"/list";
		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
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
