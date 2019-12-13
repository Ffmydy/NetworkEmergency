package com.guet.handlers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.guet.beans.User;
import com.guet.service.IUserService;

@Controller
public class UserController {
	@Autowired
	@Qualifier("userService")
	private IUserService service;
	public void setService(IUserService service) {
		this.service = service;
	}
	@RequestMapping("/login.do")
	public ModelAndView doLogin(String account_number,String password,HttpServletRequest request,HttpServletResponse response){
		//System.out.print(account_number);
		//System.out.print(password);
		ModelAndView mv=new ModelAndView();
		if(account_number.equals("admin") && password.equals("123456")){
			mv.setViewName("unitinfo.do");
		}
		else{
		User user =service.userLogin(account_number, password);
		if(user!=null){
			mv.setViewName("forward:/user_main.do");
		}
		else{
			mv.addObject("login_error","账号密码错误，请确认后再输入。。。");
			mv.setViewName("forward:/index.jsp");
		}
	}
		return mv;
		
	}
}
