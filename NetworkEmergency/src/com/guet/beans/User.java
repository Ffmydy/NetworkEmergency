package com.guet.beans;

public class User {
	private Integer user_id;//用户id
	private String user_name;//用户姓名
	private String user_tele;//用户电话
	private String user_password;//用户登录密码
	private String user_email;//用户邮箱
	private String user_wechat;//用户微信
	private String user_unit;//用户单位
	private Integer user_untype;//用户企业类型
	private Integer user_state;//用户状态
	
	public User(Integer user_id,String user_name, String user_tele,String user_password, String user_email,String user_wechat, String user_unit,
			Integer user_untype, Integer user_state) {
		super();
		this.user_id=user_id;
		this.user_name = user_name;
		this.user_tele = user_tele;
		this.user_password=user_password;
		this.user_email=user_email;
		this.user_wechat = user_wechat;
		this.user_unit = user_unit;
		this.user_untype = user_untype;
		this.user_state = user_state;
	}
	
	

	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public String getUser_tele() {
		return user_tele;
	}

	public void setUser_tele(String user_tele) {
		this.user_tele = user_tele;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_email() {
		return user_email;
	}


	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_wechat() {
		return user_wechat;
	}


	public void setUser_wechat(String user_wechat) {
		this.user_wechat = user_wechat;
	}



	public String getUser_unit() {
		return user_unit;
	}



	public void setUser_unit(String user_unit) {
		this.user_unit = user_unit;
	}

	public Integer getUser_untype() {
		return user_untype;
	}


	public void setUser_untype(Integer user_untype) {
		this.user_untype = user_untype;
	}


	public Integer getUser_state() {
		return user_state;
	}

	public void setUser_state(Integer user_state) {
		this.user_state = user_state;
	}



	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_name=" + user_name + ", user_tele=" + user_tele + ", user_password="
				+ user_password + ", user_email=" + user_email + ", user_wechat=" + user_wechat + ", user_unit="
				+ user_unit + ", user_untype=" + user_untype + ", user_state=" + user_state + "]";
	}

	
	
	
}
