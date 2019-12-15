package com.guet.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.guet.beans.BarBean;
import com.guet.beans.Log;
import com.guet.beans.Unit;
import com.guet.beans.User;

public interface IManageDao {

	List<User> showUserinfo_0(Map<String, Object> map);
	List<User> showUserinfo_1(Map<String, Object> map);
	List<User> showUserinfo_2(Map<String, Object> map);
	List<User> showUserinfo_3(Map<String, Object> map);
	Long selUser_Count(int user_untype);
	User check_userifexist(String user_tele);
	void adduser(User user);
	void updateuser(User user);
	void deleuser(String user_tele);
	List<Unit> showUnitinfo(Map<String, Object> map);
	Long selUnit_Count();
	List<Unit> showunitinfo_0(Map<String, Object> map);
	List<Unit> showunitinfo_1(Map<String, Object> map);
	List<Unit> showunitinfo_2(Map<String, Object> map);
	List<Unit> showunitinfo_3(Map<String, Object> map);
	Long seldetailUnit_Count(int unit_type);
	Unit check_unitifexist(String unit_name,int unit_type);
	void addunit(Unit unit);
	void updateunit(Unit unit);
	void deleunit(String unit_name);
	void deleuser_sameunit(String unit_name);
	List<Log> showlog(Map<String, Object> map);
	Long selLog_Count();
	
}
