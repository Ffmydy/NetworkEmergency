package com.guet.beans;

public class PieBean {
	private Integer state;
	private Integer num;
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "PieBean [state=" + state + ", num=" + num + "]";
	}
	
	
}
