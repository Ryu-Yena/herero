package com.herero.vo;

public class BusinessVo {
	
	private int business_no;
	private String business_id;
	private String business_pw;
	private String business_owner_name;
	private String business_registed_no;
	private String business_name;
	private String business_address;
	
	
	
	
	
	public BusinessVo() {
		super();
	}
	
	
	public BusinessVo(int business_no, String business_id, String business_pw, String business_owner_name,
			String business_registed_no, String business_name, String business_address) {
		super();
		this.business_no = business_no;
		this.business_id = business_id;
		this.business_pw = business_pw;
		this.business_owner_name = business_owner_name;
		this.business_registed_no = business_registed_no;
		this.business_name = business_name;
		this.business_address = business_address;
	}
	public int getBusiness_no() {
		return business_no;
	}
	public void setBusiness_no(int business_no) {
		this.business_no = business_no;
	}
	public String getBusiness_id() {
		return business_id;
	}
	public void setBusiness_id(String business_id) {
		this.business_id = business_id;
	}
	public String getBusiness_pw() {
		return business_pw;
	}
	public void setBusiness_pw(String business_pw) {
		this.business_pw = business_pw;
	}
	public String getBusiness_owner_name() {
		return business_owner_name;
	}
	public void setBusiness_owner_name(String business_owner_name) {
		this.business_owner_name = business_owner_name;
	}
	public String getBusiness_registed_no() {
		return business_registed_no;
	}
	public void setBusiness_registed_no(String business_registed_no) {
		this.business_registed_no = business_registed_no;
	}
	public String getBusiness_name() {
		return business_name;
	}
	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}
	public String getBusiness_address() {
		return business_address;
	}
	public void setBusiness_address(String business_address) {
		this.business_address = business_address;
	}


	@Override
	public String toString() {
		return "BusinessVo [business_no=" + business_no + ", business_id=" + business_id + ", business_pw="
				+ business_pw + ", business_owner_name=" + business_owner_name + ", business_registed_no="
				+ business_registed_no + ", business_name=" + business_name + ", business_address=" + business_address
				+ "]";
	}

}
