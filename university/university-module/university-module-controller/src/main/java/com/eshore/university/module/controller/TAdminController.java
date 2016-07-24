package com.eshore.university.module.controller;

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
		System.out.println();
		String pwd = admin.getPassword();
		admin.setPassword(PasswordCreate.getPassword(admin.getPassword()));
		List<TAdmin> list = tadminService.checkLogin(admin);
		if(list.size() == 1){
			if(rmb != null){
				Cookie cook1 = new Cookie("username", admin.getUsername());
				Cookie cook2 = new Cookie("password", pwd);
				resp.addCookie(cook1);
				resp.addCookie(cook2);
			}
			utils.setSessionAttribute("admin", list.get(0));
			return "index";
		}else{
			utils.setRequestAttribute("err", 1);
			return "redirect:/index.jsp";
		}
	}
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
