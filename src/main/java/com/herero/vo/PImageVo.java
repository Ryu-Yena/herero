package com.herero.vo;

public class PImageVo {

	private int pImageNo;
	private int placeNo;
	private String imageName;
	private int firstImage;
	private String regDate;

	public PImageVo() {
	}

	public PImageVo(int pImageNo, int placeNo, String imageName, int firstImage, String regDate) {
		this.pImageNo = pImageNo;
		this.placeNo = placeNo;
		this.imageName = imageName;
		this.firstImage = firstImage;
		this.regDate = regDate;
	}

	public int getpImageNo() {
		return pImageNo;
	}

	public void setpImageNo(int pImageNo) {
		this.pImageNo = pImageNo;
	}

	public int getPlaceNo() {
		return placeNo;
	}

	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public int getFirstImage() {
		return firstImage;
	}

	public void setFirstImage(int firstImage) {
		this.firstImage = firstImage;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "PImageVo [pImageNo=" + pImageNo + ", placeNo=" + placeNo + ", imageName=" + imageName + ", firstImage="
				+ firstImage + ", regDate=" + regDate + "]";
	}

}
