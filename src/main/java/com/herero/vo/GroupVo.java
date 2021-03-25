package com.herero.vo;

public class GroupVo {
	
	private int group_no;
	private int province_no;
	private int region_no;
	private int category_no;
	private String group_name;
	private String group_url;
	private String content;
	private String founded_date;
	
	
	public GroupVo() {
		super();
	}
	
	public GroupVo(int group_no, int province_no, int region_no, int category_no, String group_name, String group_url,
			String content, String founded_date) {
		super();
		this.group_no = group_no;
		this.province_no = province_no;
		this.region_no = region_no;
		this.category_no = category_no;
		this.group_name = group_name;
		this.group_url = group_url;
		this.content = content;
		this.founded_date = founded_date;
	}
	public int getGroup_no() {
		return group_no;
	}
	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}
	public int getProvince_no() {
		return province_no;
	}
	public void setProvince_no(int province_no) {
		this.province_no = province_no;
	}
	public int getRegion_no() {
		return region_no;
	}
	public void setRegion_no(int region_no) {
		this.region_no = region_no;
	}
	public int getCategory_no() {
		return category_no;
	}
	public void setCategory_no(int category_no) {
		this.category_no = category_no;
	}
	public String getGroup_name() {
		return group_name;
	}
	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}
	public String getGroup_url() {
		return group_url;
	}
	public void setGroup_url(String group_url) {
		this.group_url = group_url;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFounded_date() {
		return founded_date;
	}
	public void setFounded_date(String founded_date) {
		this.founded_date = founded_date;
	}

	@Override
	public String toString() {
		return "GroupVo [group_no=" + group_no + ", province_no=" + province_no + ", region_no=" + region_no
				+ ", category_no=" + category_no + ", group_name=" + group_name + ", group_url=" + group_url
				+ ", content=" + content + ", founded_date=" + founded_date + "]";
	}
	

}
