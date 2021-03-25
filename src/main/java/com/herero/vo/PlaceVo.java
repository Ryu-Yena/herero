package com.herero.vo;

import java.util.List;

public class PlaceVo {

	private int placeNo;
	private int businessNo;
	private String placeName;
	private String placeAddress;
	private String placeContent;
	private String placeCategory;
	private String image_name;

	private List<RoomVo> roomList;

	private List<PImageVo> imageList;

	public PlaceVo() {
		super();
	}

	public PlaceVo(int placeNo, int businessNo, String placeName, String placeAddress, String placeContent,
			String placeCategory, List<RoomVo> roomList, List<PImageVo> imageList) {
		super();
		this.placeNo = placeNo;
		this.businessNo = businessNo;
		this.placeName = placeName;
		this.placeAddress = placeAddress;
		this.placeContent = placeContent;
		this.placeCategory = placeCategory;
		this.roomList = roomList;
		this.imageList = imageList;
	}

	public int getPlaceNo() {
		return placeNo;
	}

	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}

	public int getBusinessNo() {
		return businessNo;
	}

	public void setBusinessNo(int businessNo) {
		this.businessNo = businessNo;
	}

	public String getPlaceName() {
		return placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}

	public String getPlaceAddress() {
		return placeAddress;
	}

	public void setPlaceAddress(String placeAddress) {
		this.placeAddress = placeAddress;
	}

	public String getPlaceContent() {
		return placeContent;
	}

	public void setPlaceContent(String placeContent) {
		this.placeContent = placeContent;
	}

	public String getPlaceCategory() {
		return placeCategory;
	}

	public void setPlaceCategory(String placeCategory) {
		this.placeCategory = placeCategory;
	}

	public List<RoomVo> getRoomList() {
		return roomList;
	}

	public void setRoomList(List<RoomVo> roomList) {
		this.roomList = roomList;
	}

	public List<PImageVo> getImageList() {
		return imageList;
	}

	public void setImageList(List<PImageVo> imageList) {
		this.imageList = imageList;
	}

	public String getImage_name() {
		return image_name;
	}

	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}

	@Override
	public String toString() {
		return "PlaceVo [placeNo=" + placeNo + ", businessNo=" + businessNo + ", placeName=" + placeName
				+ ", placeAddress=" + placeAddress + ", placeContent=" + placeContent + ", placeCategory="
				+ placeCategory + ", image_name=" + image_name + ", roomList=" + roomList + ", imageList=" + imageList
				+ "]";
	}

}
