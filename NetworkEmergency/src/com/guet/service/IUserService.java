package com.guet.service;

import com.guet.beans.Log;
import com.guet.beans.User;

public interface IUserService {
	User userLogin(String user_account,String user_password);//ÓÃ»§µÇÂ¼

	void addlog(Log log);

}
