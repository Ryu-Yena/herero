package com.herero.vo;

public class ProvinceVo {
	
	private int province_no;
	private String province;
	
	public ProvinceVo() {
		super();
	}

	public ProvinceVo(int province_no, String province) {
		super();
		this.province_no = province_no;
		this.province = province;
	}

	public int getProvince_no() {
		return province_no;
	}

	public void setProvince_no(int province_no) {
		this.province_no = province_no;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	@Override
	public String toString() {
		return "ProvinceVo [province_no=" + province_no + ", province=" + province + "]";
	}
	
	

}
