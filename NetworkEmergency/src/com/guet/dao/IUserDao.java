package com.guet.dao;

import com.guet.beans.User;

public interface IUserDao {
	User userLogin(String user_account, String md5Password);//�û���¼
}
