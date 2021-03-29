package com.herero.vo;

/*소모임 등록폼 > 소모임 관심사 선택 모달창에서 사용*/

public class CategoryVo {

	private int category_no;
	private String category_name;
	private String category_enrolled_date;

	public CategoryVo() {
	}

	public CategoryVo(int category_no, String category_name, String category_enrolled_date) {
		this.category_no = category_no;
		this.category_name = category_name;
		this.category_enrolled_date = category_enrolled_date;
	}

	public int getCategory_no() {
		return category_no;
	}

	public void setCategory_no(int category_no) {
		this.category_no = category_no;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getCategory_enrolled_date() {
		return category_enrolled_date;
	}

	public void setCategory_enrolled_date(String category_enrolled_date) {
		this.category_enrolled_date = category_enrolled_date;
	}

	@Override
	public String toString() {
		return "CategoryVo [category_no=" + category_no + ", category_name=" + category_name
				+ ", category_enrolled_date=" + category_enrolled_date + "]";
	}

}
