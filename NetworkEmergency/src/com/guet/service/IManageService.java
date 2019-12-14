package com.guet.service;

import com.guet.beans.PageInfo;
import com.guet.beans.Unit;
import com.guet.beans.User;

public interface IManageService {
	PageInfo showUserinfo(int pageSize, int pageNumber,int user_untype);
	User check_userifexist(String user_tele);
	void adduser(User user);
	void updateuser(User user);
	void deleuser(String user_tele);
	PageInfo showUnitinfo(int pageSize, int pageNumber);
	PageInfo showunit(int pageSize, int pageNumber, int unit_type);
	Unit check_unitifexist(String unit_name,int unit_untype);
	void addunit(Unit unit);
	void updateunit(Unit unit);
	void deleunit(String unit_name);
	void deleuser_sameunit(String unit_name);
	PageInfo showlog(int pageSize, int pageNumber);
}
