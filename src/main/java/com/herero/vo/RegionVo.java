package com.herero.vo;

public class RegionVo {
	
	
	private int region_no;
	private int province_no;
	private String name;
	
	
	public RegionVo() {
		super();
	}


	public RegionVo(int region_no, int province_no, String name) {
		super();
		this.region_no = region_no;
		this.province_no = province_no;
		this.name = name;
	}


	public int getRegion_no() {
		return region_no;
	}


	public void setRegion_no(int region_no) {
		this.region_no = region_no;
	}


	public int getProvince_no() {
		return province_no;
	}


	public void setProvince_no(int province_no) {
		this.province_no = province_no;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	@Override
	public String toString() {
		return "RegionVo [region_no=" + region_no + ", province_no=" + province_no + ", name=" + name + "]";
	}
	
	
	

}
