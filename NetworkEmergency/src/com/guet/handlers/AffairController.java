package com.guet.handlers;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.util.StringUtil;
import com.guet.beans.Affair;
import com.guet.beans.BarBean;
import com.guet.beans.PieBean;
import com.guet.beans.Unit;
import com.guet.beans.User;
import com.guet.service.IAffairService;


@Controller
public class AffairController {
	@Autowired
	@Qualifier("affairService")
	private IAffairService affairservice;
	public void setService(IAffairService affairService) {
		this.affairservice = affairService;
	}
	
	@RequestMapping("/table.do")
	public ModelAndView doLogin(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv=new ModelAndView();
		String affair_type_str=request.getParameter("aff_incstate");
		int affair_type=Integer.parseInt(affair_type_str);
	
		List<Affair> affair=new ArrayList<Affair>();
		affair=affairservice.showAffairinfo(affair_type);
	
		List<Affair> IAffair0 = new ArrayList<Affair>(),IAffair1=new ArrayList<Affair>(),IAffair2 = new ArrayList<Affair>(),IAffair3 = new ArrayList<Affair>(),IAffair4=new ArrayList<Affair>();
		int l0 = 0,l1=0,l2=0,l3=0,l4=0;
		for (Affair affair2 : affair) {	
			if(affair2.getAff_incType()==0){
				IAffair0.add(affair2);;
			}
			if(affair2.getAff_incType()==1){
				IAffair1.add(affair2);
			}
			if(affair2.getAff_incType()==2){
				IAffair2.add(affair2);
			}
			if(affair2.getAff_incType()==3){
				IAffair3.add(affair2);
			}
			if(affair2.getAff_incType()==4){
				IAffair4.add(affair2);
			}
			
		}

		mv.addObject("IAffair0", IAffair0);
		mv.addObject("IAffair1", IAffair1);
		mv.addObject("IAffair2", IAffair2);
		mv.addObject("IAffair3", IAffair3);
		mv.addObject("IAffair4", IAffair4);
		
	
		mv.setViewName("forward:/tables.jsp");
		return mv;
	}
	@RequestMapping("/state_bar.do")
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		try{
			List<BarBean> list0=affairservice.select_state0();
			List<BarBean> list1=affairservice.select_state1();
			List<BarBean> list2=affairservice.select_state2();
			List<BarBean> list3=affairservice.type_statistics();
			int[] type_num=new int[5];
			//System.out.println(list3);
			int i=0;
			for (BarBean pie:list3){
				type_num[i]=pie.getNum();
				i++;
			}
			String[] x_name={"违处信息","网络攻击","恶意软件","信息泄露","安全威胁"};
			request.setAttribute("liststate0", list0);
			request.setAttribute("liststate1", list1);
			request.setAttribute("liststate2", list2);
			request.setAttribute("state_statistics", list3);
			request.setAttribute("x_type", x_name);
			request.setAttribute("x_state", type_num);
			request.getRequestDispatcher("/charts.jsp").forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/management.do")
	public ModelAndView toManagement(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv=new ModelAndView();
		
		List<Affair> affairs=affairservice.toManagement();
	
		
		mv.addObject("affairs", affairs);
		mv.setViewName("forward:/management.jsp");
		return mv;
	}
	
	@RequestMapping("/Conditon3.do")
	public ModelAndView toConditon3(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv=new ModelAndView();
		String affair_type_str=request.getParameter("xiaqu_id");
		int affair_type=Integer.parseInt(affair_type_str);
		
		List<Affair> affairs=affairservice.toConditon3(affair_type);
		System.out.println("我是condieno3===================="+affair_type);
		
		List<Unit> unit_name=affairservice.toUnit(affair_type);
		
		
		for (Affair affair : affairs) {
			System.out.println(affair.toString());
		}
		
		mv.addObject("affairs3", affairs);
		mv.addObject("unit_name", unit_name);
		mv.addObject("xiaqu_id", affair_type);
		mv.setViewName("forward:/management.jsp");
		return mv;
	}
	
	@RequestMapping("/Conditon2.do")
	public ModelAndView toConditon2(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv=new ModelAndView();
		String affair_type_str=request.getParameter("shijian_id");
		int affair_type=Integer.parseInt(affair_type_str);
		
		List<Affair> affairs=affairservice.toConditon2(affair_type);
		System.out.println("我是condieno2===================="+affair_type);
			
		for (Affair affair : affairs) {
			System.out.println("我是condieno2===================="+affair.toString());
		}
		mv.addObject("affairs3", affairs);
		mv.setViewName("forward:/management.jsp");
		return mv;
	}
	
	@RequestMapping("/Conditon4.do")
	public ModelAndView toConditon4(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv=new ModelAndView();
		
		String qiye_name = request.getParameter("qiye_name");	
		if(StringUtil.isNotEmpty(qiye_name)){
    		try {
    			qiye_name=URLDecoder.decode(qiye_name,"utf-8");
    			} catch (UnsupportedEncodingException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			}
		}
		List<Affair> affairs=affairservice.toConditon4(qiye_name);
		System.out.println("我是condieno4===================="+qiye_name);
			
		String affair_type_str=request.getParameter("xiaqu_id");
		int affair_type=Integer.parseInt(affair_type_str);
				
		System.out.println("我是condieno4===================="+affair_type);
		
		List<Unit> unit_name=affairservice.toUnit(affair_type);
		

		
		mv.addObject("affairs3", affairs);
		mv.addObject("unit_name", unit_name);
		mv.addObject("qiye_id", qiye_name);
		mv.setViewName("forward:/management.jsp");
		return mv;
	}
	
	@RequestMapping("/Conditon1.do")
	public ModelAndView toConditon1(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv=new ModelAndView();
		
		String mydate = request.getParameter("mydate_id");	
		List<Affair> affairs=affairservice.toConditon1(mydate);
		System.out.println("我是condieno1===================="+mydate);
		
		for (Affair affair : affairs) {
			System.out.println("我是condieno1===================="+affair.toString());
		}
		

		mv.addObject("affairs3", affairs);
	
		mv.setViewName("forward:/management.jsp");
		return mv;
	}
	
	@RequestMapping("/user_main.do")
	public void domain(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws ServletException,IOException{
		try{
			List<PieBean> list=affairservice.state_statistics();
			int[] state_num=new int[3];
			int i=0;
			for(PieBean bean:list){
				state_num[i]=bean.getNum();
				i++;
			}
			User user=(User) session.getAttribute("user");
			String user_unit=user.getUser_unit();
			List<Affair> list_ownaffair=affairservice.showownaffair(user_unit);
			//System.out.println(list_ownaffair);
			request.setAttribute("list_ownaffair", list_ownaffair);
			session.setAttribute("User_name", user.getUser_name());
			request.setAttribute("x_state",state_num);
			session.setAttribute("User_unit", user.getUser_unit());
			request.getRequestDispatcher("/user_main.jsp").forward(request, response);
		}catch (Exception e){
			e.printStackTrace();
		}
	}
	@RequestMapping("/detal.do")
	public ModelAndView dodetal(HttpServletRequest request,HttpServletResponse response){
		Integer aff_incstate=Integer.parseInt(request.getParameter("aff_incstate"));
		Integer aff_id=Integer.parseInt(request.getParameter("aff_id"));
		affairservice.detal(aff_incstate,aff_id);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("/user_main.do");
		return mv;
	}
	@RequestMapping("/transpond.do")
	public ModelAndView dotranspond(HttpServletRequest request){
		ModelAndView mv=new ModelAndView();
		String unit_name=request.getParameter("unit_name");
		Integer aff_id=Integer.parseInt(request.getParameter("aff_id"));
		Unit unit=affairservice.checkifexist_unit(unit_name);
		if(unit!=null){
			affairservice.transpondaffair(aff_id,unit_name);
			mv.addObject("transpondSuc","转发成功");
		}
		else{
			mv.addObject("transpondFail", "转发单位不在系统内，请确认后再转发");
			
		}
		mv.setViewName("/user_main.do");
		return mv;
	}
	@RequestMapping("/publish.do")
	public ModelAndView dopublish(HttpServletRequest request ,HttpSession session){
		ModelAndView mv=new ModelAndView();
		User user=(User) session.getAttribute("user");
		Integer user_untype=user.getUser_untype();
		if(user_untype==0||user_untype==1){
			String aff_uniName=request.getParameter("aff_uniName");
			//System.out.println(aff_uniName);
			Unit unit=affairservice.checkifexist_unit(aff_uniName);
			System.out.println(unit);
			if(unit!=null){
				Integer aff_incType=Integer.parseInt(request.getParameter("aff_incType"));
				Date nowDate = new Date(System.currentTimeMillis());
			    SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			    String aff_incTime=time.format(nowDate);
			    String aff_incDes=request.getParameter("aff_incDes");
			    Affair affair=new Affair(0,0,aff_incType,aff_uniName,aff_incTime,aff_incDes);
			    affairservice.publish(affair);
			    mv.addObject("publishSuc","事件发布成功");
			}
			else{
				mv.addObject("publishFail", "转发单位不在系统内，请确认后再转发");
			}
		}
		else{
			mv.addObject("publishFail2", "您不是市级用户和市辖区用户，不能发布事件");
		}
		mv.setViewName("/user_main.do");
		return mv;
	}
	
}
