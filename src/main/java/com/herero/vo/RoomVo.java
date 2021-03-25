package com.herero.vo;

public class RoomVo {
	
	private int roomNo;
	private int placeNo;
	private String roomName;
	private String roomMember;
	private int roomPrice;
	private int roomFee;
	
	public RoomVo() {
		super();
	}

	public RoomVo(int roomNo, int placeNo, String roomName, String roomMember, int roomPrice, int roomFee) {
		super();
		this.roomNo = roomNo;
		this.placeNo = placeNo;
		this.roomName = roomName;
		this.roomMember = roomMember;
		this.roomPrice = roomPrice;
		this.roomFee = roomFee;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public int getPlaceNo() {
		return placeNo;
	}

	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomNme(String roomName) {
		this.roomName = roomName;
	}

	public String getRoomMember() {
		return roomMember;
	}

	public void setRoomMember(String roomMember) {
		this.roomMember = roomMember;
	}

	public int getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}

	public int getRoomFee() {
		return roomFee;
	}

	public void setRoomFee(int roomFee) {
		this.roomFee = roomFee;
	}

	@Override
	public String toString() {
		return "RoomVo [roomNo=" + roomNo + ", placeNo=" + placeNo + ", roomName=" + roomName + ", roomMember="
				+ roomMember + ", roomPrice=" + roomPrice + ", roomFee=" + roomFee + "]";
	}

	
	
	

}
