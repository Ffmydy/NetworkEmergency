package com.guet.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.guet.beans.User;
import com.guet.beans.Log;
import com.guet.beans.PageInfo;
import com.guet.beans.Unit;
import com.guet.dao.IManageDao;
import com.guet.util.MD5Util;

@Service("manageService")
public class ManageServiceImpl implements IManageService {
	@Resource(name="IManageDao")
	private IManageDao dao;
	public void setDao(IManageDao dao){
		this.dao=dao;
	}
	@Override
	public PageInfo showUserinfo(int pageSize, int pageNumber,int user_untype) {
		PageInfo pi=new PageInfo();
		pi.setPageNumber(pageNumber);
		pi.setPageSize(pageSize);
		Map<String,Object> map=new HashMap<>();
		map.put("pageStart",pageSize*(pageNumber-1));
		map.put("pageSize", pageSize);
		List<User> list;
		if(user_untype==0){
			 list=dao.showUserinfo_0(map);
		}
		else if(user_untype==1){
			 list=dao.showUserinfo_1(map);
		}
		else if(user_untype==2){
			 list=dao.showUserinfo_2(map);
		}
		else{
			 list=dao.showUserinfo_3(map);
		}
		Long total=dao.selUser_Count(user_untype);
		pi.setCount(total);
		pi.setList(list);
		pi.setTotal(total%pageSize==0?total/pageSize:total/pageSize+1);
		return pi;
	}
	@Override
	public User check_userifexist(String user_tele) {
		User user=dao.check_userifexist(user_tele);
		return user;
	}
	@Override
	public void adduser(User user) {
		//md5º”√‹
		user.setUser_password(MD5Util.MD5EncodeUtf8(user.getUser_password()));
		dao.adduser(user);
	}
	@Override
	public void updateuser(User user) {
		//md5º”√‹
		user.setUser_password(MD5Util.MD5EncodeUtf8(user.getUser_password()));
		dao.updateuser(user);
		
	}
	@Override
	public void deleuser(String user_tele) {
		dao.deleuser(user_tele);
	}
	@Override
	public PageInfo showUnitinfo(int pageSize, int pageNumber) {
		PageInfo pi=new PageInfo();
		pi.setPageNumber(pageNumber);
		pi.setPageSize(pageSize);
		Map<String,Object> map=new HashMap<>();
		map.put("pageStart",pageSize*(pageNumber-1));
		map.put("pageSize", pageSize);
		List<Unit> list=dao.showUnitinfo(map);
		Long total=dao.selUnit_Count();
		pi.setCount(total);
		pi.setList(list);
		pi.setTotal(total%pageSize==0?total/pageSize:total/pageSize+1);
		return pi;
	}
	@Override
	public PageInfo showunit(int pageSize, int pageNumber, int unit_type) {
		PageInfo pi=new PageInfo();
		pi.setPageNumber(pageNumber);
		pi.setPageSize(pageSize);
		Map<String,Object> map=new HashMap<>();
		map.put("pageStart",pageSize*(pageNumber-1));
		map.put("pageSize", pageSize);
		List<Unit> list;
		if(unit_type==0){
			 list=dao.showunitinfo_0(map);
		}
		else if(unit_type==1){
			 list=dao.showunitinfo_1(map);
		}
		else if(unit_type==2){
			 list=dao.showunitinfo_2(map);
		}
		else{
			 list=dao.showunitinfo_3(map);
		}
		Long total=dao.seldetailUnit_Count(unit_type);
		pi.setCount(total);
		pi.setList(list);
		pi.setTotal(total%pageSize==0?total/pageSize:total/pageSize+1);
		return pi;
	}
	@Override
	public Unit check_unitifexist(String unit_name,int unit_type) {
		Unit unit=dao.check_unitifexist(unit_name,unit_type);
		return unit;
	}
	@Override
	public void addunit(Unit unit) {
		dao.addunit(unit);
	}
	@Override
	public void updateunit(Unit unit) {
		dao.updateunit(unit);
	}
	@Override
	public void deleunit(String unit_name) {
		dao.deleunit(unit_name);
	}
	@Override
	public void deleuser_sameunit(String unit_name) {
		dao.deleuser_sameunit(unit_name);
	}
	@Override
	public PageInfo showlog(int pageSize, int pageNumber) {
		PageInfo pi=new PageInfo();
		pi.setPageNumber(pageNumber);
		pi.setPageSize(pageSize);
		Map<String,Object> map=new HashMap<>();
		map.put("pageStart",pageSize*(pageNumber-1));
		map.put("pageSize", pageSize);
		List<Log> list=dao.showlog(map);
		Long total=dao.selLog_Count();
		pi.setCount(total);
		pi.setList(list);
		pi.setTotal(total%pageSize==0?total/pageSize:total/pageSize+1);
		return pi;
	}

}
