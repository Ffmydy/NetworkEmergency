package com.guet.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.guet.beans.Log;
import com.guet.beans.User;
import com.guet.dao.IUserDao;
import com.guet.util.MD5Util;
@Service("userService")
public class UserServiceImpl implements IUserService {
	@Resource(name="IUserDao")
	private IUserDao dao;
	public void setDao(IUserDao dao){
		this.dao=dao;
	}
	@Override
	public User userLogin(String user_account, String user_password) {
		//md5º”√‹
		String md5Password=MD5Util.MD5EncodeUtf8(user_password);
		User user=dao.userLogin(user_account,md5Password);
		return user;
	}
	@Override
	public void addlog(Log log) {
		dao.addlog(log);
	}
}
