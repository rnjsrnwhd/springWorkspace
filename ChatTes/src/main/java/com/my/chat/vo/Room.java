package com.my.chat.vo;

public class Room {

	private String roomSeq;
	private String userId;
	private String name;
	private String indate;

	public Room(String roomSeq, String userId, String name, String indate) {
		super();
		this.roomSeq = roomSeq;
		this.userId = userId;
		this.name = name;
		this.indate = indate;
	}

	public Room() {
		super();
	}

	public String getRoomSeq() {
		return roomSeq;
	}

	public void setRoomSeq(String roomSeq) {
		this.roomSeq = roomSeq;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIndate() {
		return indate;
	}

	public void setIndate(String indate) {
		this.indate = indate;
	}

	@Override
	public String toString() {
		return "Room [roomSeq=" + roomSeq + ", userId=" + userId + ", name=" + name + ", indate=" + indate + "]";
	}

}
