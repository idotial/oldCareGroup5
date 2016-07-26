package com.eshore.university.module.controller;

import java.util.Date;
import java.util.HashMap;
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
import com.eshore.university.module.service.ITOldService;
import com.eshore.university.module.util.PasswordCreate;
import com.eshore.university.module.pojo.TAdmin;
import com.eshore.university.module.pojo.TOld;


@Controller
@RequestMapping("/module/told")
public class TOldController extends BaseController<TOld> {

	@Autowired ITOldService  toldService;
	
	/***
	 * 老人登陆
	 * @param admin
	 * @return
	 */
	@RequestMapping(value="oldLogin")
	public String oldLogin(TOld old,HttpServletRequest req,HttpServletResponse resp){
	
		String rmb = req.getParameter("rmb");
		String pwd = old.getPassword();
		TOld ta = toldService.oldLogin(old);
		if(ta!=null){			
			if(rmb != null){
				Cookie cook1 = new Cookie("username", old.getUsername());
				Cookie cook2 = new Cookie("password", pwd);
				cook1.setMaxAge(60*60*24*30);
				cook2.setMaxAge(60*60*24*30);
				resp.addCookie(cook1);
				resp.addCookie(cook2);
			}
			utils.setSessionAttribute("old", ta);
			return "redirect:/plugins/front/index.jsp";
		}else{			
			return "redirect:/plugins/front/index.jsp";
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
		boolean check = toldService.checkUsername(username);
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
	 * 注册老人
	 * @param admin
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="addOld")
	public Map<String, String> addOld(TOld old){
		Map<String, String> map = new HashMap<String, String>();
		try {			
			old.setRemainder(0.0);
			toldService.save(old);
			map.put("result", "success");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("result", "error");
		}finally{
			return map;
		}
	}
	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/module/told/";
	}

	@Override
	protected IBaseService getService() {
		return toldService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "university-module-controller>TOld";
	}

}
