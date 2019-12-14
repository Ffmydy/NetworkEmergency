package com.guet.handlers;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.guet.service.IManageService;
import com.guet.beans.PageInfo;
import com.guet.beans.Unit;
import com.guet.beans.User;
@Controller
public class ManageController {
	@Autowired
	@Qualifier("manageService")
	private IManageService service;
	public void setService(IManageService service) {
		this.service = service;
	}
	@RequestMapping("/userinfo.do")
	public ModelAndView doUserinfo(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv =new ModelAndView();
		String user_untype_str=request.getParameter("user_untype");
			int user_untype=Integer.parseInt(user_untype_str);
			PageInfo pi=new PageInfo();
			String pageSizeStr = request.getParameter("pageSize");
			int pageSize=2;
			if(pageSizeStr!=null&&!pageSizeStr.equals("")){
				pageSize=Integer.parseInt(pageSizeStr);
			}
			String pageNumberStr=request.getParameter("pageNumber");
			int pageNumber=1;
			if(pageNumberStr!=null&&!pageNumberStr.equals("")){
				pageNumber=Integer.parseInt(pageNumberStr); 
			}
			pi=service.showUserinfo(pageSize, pageNumber,user_untype);
			mv.addObject("PageInfo", pi);
			mv.addObject("user_untype",user_untype);
			mv.setViewName("forward:/userInfo.jsp");
			return mv;	
	}
	@RequestMapping("/adduser.do")
	public ModelAndView doAdduser(String user_name,String user_email,String user_wechat,String user_tele,int user_untype,String user_unit,HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv=new ModelAndView();
		User user = new User(0,user_name, user_tele, user_tele, user_email, user_wechat, user_unit, user_untype,0);
		User user_extral=service.check_userifexist(user_tele);
		Unit unit=service.check_unitifexist(user_unit,user_untype);
		if(unit!=null){
			if(user_extral==null){
				service.adduser(user);
				mv.setViewName("forward:/unitinfo.do");
				mv.addObject("addUser_SUC","添加用户成功");
			}
			else{
				mv.setViewName("forward:/addUser.jsp");
				mv.addObject("addUser_ERROR","您所要添加的用户已经是系统用户，请查证后再添加");
			}
		}
		else{
			mv.setViewName("forward:/addUser.jsp");
			mv.addObject("addUser_ERROR2", "你所在的单位不在系统内，请查证后再添加");
		}
		
		return mv;
	}
	@RequestMapping("/updateuser.do")
	public ModelAndView doupdateuser(String user_name,String user_email,String user_wechat,String user_tele,int user_untype,String user_unit,HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv=new ModelAndView();
		User user = new User(0,user_name, user_tele, user_tele, user_email, user_wechat, user_unit, user_untype,0);
		service.updateuser(user);
		mv.setViewName("forward:/unitinfo.do");
		mv.addObject("updateUser_SUC", "用户信息已更新成功");
		return mv;
	}
	@RequestMapping("/deleuser.do")
	public ModelAndView dodeleuser(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv=new ModelAndView();
		String user_tele=request.getParameter("user_tele");
		//System.out.println(user_tele);
		service.deleuser(user_tele);
		mv.setViewName("forward:/unitinfo.do");
		mv.addObject("deleUser_SUC", "该用户删除成功");
		return mv;
	}
	@RequestMapping("/unitinfo.do")
	public ModelAndView dounitinfo(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv=new ModelAndView();
		PageInfo pi=new PageInfo();
		String pageSizeStr = request.getParameter("pageSize");
		int pageSize=2;
		if(pageSizeStr!=null&&!pageSizeStr.equals("")){
			pageSize=Integer.parseInt(pageSizeStr);
		}
		String pageNumberStr=request.getParameter("pageNumber");
		int pageNumber=1;
		if(pageNumberStr!=null&&!pageNumberStr.equals("")){
			pageNumber=Integer.parseInt(pageNumberStr); 
		}
		pi=service.showUnitinfo(pageSize, pageNumber);
		mv.addObject("PageInfo", pi);
		mv.setViewName("forward:/admin_main.jsp");
		return mv;	
	}
	@RequestMapping("/showunit.do")
	public ModelAndView doshowunit(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv =new ModelAndView();
		String unit_type_str=request.getParameter("unit_type");
			int unit_type=Integer.parseInt(unit_type_str);
			PageInfo pi=new PageInfo();
			String pageSizeStr = request.getParameter("pageSize");
			int pageSize=2;
			if(pageSizeStr!=null&&!pageSizeStr.equals("")){
				pageSize=Integer.parseInt(pageSizeStr);
			}
			String pageNumberStr=request.getParameter("pageNumber");
			int pageNumber=1;
			if(pageNumberStr!=null&&!pageNumberStr.equals("")){
				pageNumber=Integer.parseInt(pageNumberStr); 
			}
			pi=service.showunit(pageSize, pageNumber,unit_type);
			mv.addObject("PageInfo", pi);
			mv.addObject("unit_type",unit_type);
			mv.setViewName("forward:/showunit.jsp");
			return mv;	
	}
	@RequestMapping("/addunit.do")
	public ModelAndView doaddunit(String unit_name,String unit_address,int unit_type,String unit_header,String unit_heTele,String unit_InSeAdmin,String unit_AdTele){
		ModelAndView mv=new ModelAndView();
		Unit unit=new Unit(0, unit_name, unit_address, unit_type, unit_header, unit_heTele, unit_InSeAdmin, unit_AdTele);
		Unit unit_extral=service.check_unitifexist(unit_name,unit_type);
		if(unit_extral==null){
			service.addunit(unit);
			mv.setViewName("forward:/unitinfo.do");
			mv.addObject("addUnit_SUC","添加单位成功");
		}
		else{
			mv.setViewName("forward:/addUnit.jsp");
			mv.addObject("addUnit_ERROR","您所要添加的单位已经是在系统内，请查证后再添加");
		}
		return mv;
	}
	@RequestMapping("/updateunit.do")
	public ModelAndView doupdateunit(String unit_name,String unit_address,int unit_type,String unit_header,String unit_heTele,String unit_InSeAdmin,String unit_AdTele){
		ModelAndView mv=new ModelAndView();
		Unit unit=new Unit(0,unit_name,unit_address,unit_type,unit_header,unit_heTele,unit_InSeAdmin,unit_AdTele);
		service.updateunit(unit);
		mv.setViewName("forward:/unitinfo.do");
		mv.addObject("updateUnit_SUC", "单位信息已更新成功");
		return mv;	
	}
	@RequestMapping("/deleunit.do")
	public ModelAndView dodeleunit(HttpServletRequest request){
		ModelAndView mv=new ModelAndView();
		String unit_name=request.getParameter("unit_name");
		service.deleuser_sameunit(unit_name);
		service.deleunit(unit_name);
		mv.setViewName("forward:/unitinfo.do");
		mv.addObject("deleUnit_SUC", "该单位删除成功");
		return mv;
	}
	@RequestMapping("/log.do")
	public ModelAndView dolog(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv =new ModelAndView();
		PageInfo pi=new PageInfo();
		String pageSizeStr = request.getParameter("pageSize");
		int pageSize=5;
		if(pageSizeStr!=null&&!pageSizeStr.equals("")){
			pageSize=Integer.parseInt(pageSizeStr);
		}
		String pageNumberStr=request.getParameter("pageNumber");
		int pageNumber=1;
		if(pageNumberStr!=null&&!pageNumberStr.equals("")){
			pageNumber=Integer.parseInt(pageNumberStr); 
		}
		pi=service.showlog(pageSize, pageNumber);
		mv.addObject("PageInfo", pi);
		mv.setViewName("forward:/log.jsp");
		return mv;
		
	}
}
