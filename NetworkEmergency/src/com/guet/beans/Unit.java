package com.guet.beans;

public class Unit {
	private Integer unit_id;//��λid
	private String unit_name;//��λ����
	private String unit_address;//��λ��ַ
	private Integer unit_type;//��λ����
	private String unit_header;//��λ������
	private String unit_heTele;//��λ��������ϵ��ʽ
	private String unit_InSeAdmin;//��λ��������Ա
	private String unit_AdTele;//��λ��������Ա��ϵ��ʽ
	public Unit(Integer unit_id, String unit_name, String unit_address, Integer unit_type, String unit_header,
			String unit_heTele, String unit_InSeAdmin, String unit_AdTele) {
		super();
		this.unit_id = unit_id;
		this.unit_name = unit_name;
		this.unit_address = unit_address;
		this.unit_type = unit_type;
		this.unit_header = unit_header;
		this.unit_heTele = unit_heTele;
		this.unit_InSeAdmin = unit_InSeAdmin;
		this.unit_AdTele = unit_AdTele;
	}
	public Integer getUnit_id() {
		return unit_id;
	}
	public void setUnit_id(Integer unit_id) {
		this.unit_id = unit_id;
	}
	public String getUnit_name() {
		return unit_name;
	}
	public void setUnit_name(String unit_name) {
		this.unit_name = unit_name;
	}
	public String getUnit_address() {
		return unit_address;
	}
	public void setUnit_address(String unit_address) {
		this.unit_address = unit_address;
	}
	public Integer getUnit_type() {
		return unit_type;
	}
	public void setUnit_type(Integer unit_type) {
		this.unit_type = unit_type;
	}
	public String getUnit_header() {
		return unit_header;
	}
	public void setUnit_header(String unit_header) {
		this.unit_header = unit_header;
	}
	public String getUnit_heTele() {
		return unit_heTele;
	}
	public void setUnit_heTele(String unit_heTele) {
		this.unit_heTele = unit_heTele;
	}
	public String getUnit_InSeAdmin() {
		return unit_InSeAdmin;
	}
	public void setUnit_InSeAdmin(String unit_InSeAdmin) {
		this.unit_InSeAdmin = unit_InSeAdmin;
	}
	public String getUnit_AdTele() {
		return unit_AdTele;
	}
	public void setUnit_AdTele(String unit_AdTele) {
		this.unit_AdTele = unit_AdTele;
	}
	@Override
	public String toString() {
		return "Unit [unit_id=" + unit_id + ", unit_name=" + unit_name + ", unit_address=" + unit_address
				+ ", unit_type=" + unit_type + ", unit_header=" + unit_header + ", unit_heTele=" + unit_heTele
				+ ", unit_InSeAdmin=" + unit_InSeAdmin + ", unit_AdTele=" + unit_AdTele + "]";
	}
	
}
