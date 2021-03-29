package com.herero.vo;

/*소모임 이미지 사용*/
public class GImageVo{

	private int group_image_no;
	private int group_no;
	private String image_name;
	private String uploaded_time;
	private String mainImg;

	public GImageVo() {
	}
	
	public GImageVo(int group_no, String image_name, String mainImg) {
		this.group_no = group_no;
		this.image_name = image_name;
		this.mainImg = mainImg;
	}

	public GImageVo(int group_image_no, int group_no, String image_name, String mainImg) {
		this.group_image_no = group_image_no;
		this.group_no = group_no;
		this.image_name = image_name;
		this.mainImg = mainImg;
	}

	public int getGroup_image_no() {
		return group_image_no;
	}

	public void setGroup_image_no(int group_image_no) {
		this.group_image_no = group_image_no;
	}

	public int getGroup_no() {
		return group_no;
	}

	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}

	public String getImage_name() {
		return image_name;
	}

	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}

	public String getUploaded_time() {
		return uploaded_time;
	}

	public void setUploaded_time(String uploaded_time) {
		this.uploaded_time = uploaded_time;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	@Override
	public String toString() {
		return "ImageVo [group_image_no=" + group_image_no + ", group_no=" + group_no + ", image_name=" + image_name
				+ ", uploaded_time=" + uploaded_time + ", mainImg=" + mainImg + "]";
	}

}
