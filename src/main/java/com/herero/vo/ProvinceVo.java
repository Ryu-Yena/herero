package com.herero.vo;

/*소모임 등록폼 > 소모임 위치 선택  모달창에서 사용*/
/*소모임 검색조건 에서 사용*/

public class ProvinceVo {

	private int province_no;
	private String province;
	private int region_no;
	private String name;

	public ProvinceVo() {
	}

	public ProvinceVo(int province_no, String province, int region_no, String name) {
		this.province_no = province_no;
		this.province = province;
		this.region_no = region_no;
		this.name = name;
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

	public int getRegion_no() {
		return region_no;
	}

	public void setRegion_no(int region_no) {
		this.region_no = region_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "ProvinceVo [province_no=" + province_no + ", province=" + province + ", region_no=" + region_no
				+ ", name=" + name + "]";
	}

}
