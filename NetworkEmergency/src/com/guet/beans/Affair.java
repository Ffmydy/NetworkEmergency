package com.guet.beans;



public class Affair {

	private Integer aff_id;//�¼�id
	private Integer aff_incstate;//�¼�״̬
	private Integer aff_incType;//�¼�����
	private String aff_uniName;//�¼�����
	private String aff_incTime;//�¼�����ʱ���
	private String aff_incDes;//�¼���������
	
	public Affair() {
		// TODO Auto-generated constructor stub
	}



	public Integer getAff_id() {
		return aff_id;
	}



	public void setAff_id(Integer aff_id) {
		this.aff_id = aff_id;
	}



	public Integer getAff_incstate() {
		return aff_incstate;
	}



	public void setAff_incstate(Integer aff_incstate) {
		this.aff_incstate = aff_incstate;
	}



	public Integer getAff_incType() {
		return aff_incType;
	}



	public void setAff_incType(Integer aff_incType) {
		this.aff_incType = aff_incType;
	}


	public String getAff_uniName() {
		return aff_uniName;
	}



	public void setAff_uniName(String aff_uniName) {
		this.aff_uniName = aff_uniName;
	}



	public String getAff_incTime() {
		return aff_incTime;
	}



	public void setAff_incTime(String aff_incTime) {
		this.aff_incTime = aff_incTime;
	}



	public String getAff_incDes() {
		return aff_incDes;
	}



	public void setAff_incDes(String aff_incDes) {
		this.aff_incDes = aff_incDes;
	}



	@Override
	public String toString() {
		return "Affair [aff_id=" + aff_id + ", aff_incstate=" + aff_incstate + ", aff_incType=" + aff_incType
				+  ", aff_uniName=" + aff_uniName + ", aff_incTime=" + aff_incTime
				+ ", aff_incDes=" + aff_incDes + "]";
	}



	
	
}
