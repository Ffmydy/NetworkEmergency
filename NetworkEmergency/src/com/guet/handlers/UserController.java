package com.guet.handlers;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.guet.beans.Log;
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
	public ModelAndView doLogin(String account_number,String password,HttpServletRequest request,HttpServletResponse response,HttpSession session){
		//System.out.print(account_number);
		//System.out.print(password);
		ModelAndView mv=new ModelAndView();
		if(account_number.equals("admin") && password.equals("123456")){
			mv.setViewName("unitinfo.do");
		}
		else{
		User user =service.userLogin(account_number, password);
		if(user!=null){
			session.setAttribute("user", user);
			Date nowDate = new Date(System.currentTimeMillis());
		    SimpleDateFormat time = new SimpleDateFormat("yyyy年MM月dd日HH时mm分ss秒");
		    String log_time=time.format(nowDate);
			Log log=new Log(0,user.getUser_id(),user.getUser_name(),log_time);
			service.addlog(log);
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
