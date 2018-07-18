package com.global.pojo;

public class Order {

	private int id;
	private String renter;//�⻧
	private String landlord;//����
	private String roomname;
	private String starttime;//����ʱ��
	private String status;//���ڼ�鶩���Ƿ�����
	public Order() {
		super();
	}
	public Order(String renter, String landlord, String roomname,
			String starttime, String status) {
		super();
		this.renter = renter;
		this.landlord = landlord;
		this.roomname = roomname;
		this.starttime = starttime;
		this.status = status;
	}
	public Order(int id, String renter, String landlord, String roomname,
			String starttime, String status) {
		super();
		this.id = id;
		this.renter = renter;
		this.landlord = landlord;
		this.roomname = roomname;
		this.starttime = starttime;
		this.status = status;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", renter=" + renter + ", landlord="
				+ landlord + ", roomname=" + roomname + ", starttime="
				+ starttime + ", status=" + status + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRenter() {
		return renter;
	}
	public void setRenter(String renter) {
		this.renter = renter;
	}
	public String getLandlord() {
		return landlord;
	}
	public void setLandlord(String landlord) {
		this.landlord = landlord;
	}
	public String getRoomname() {
		return roomname;
	}
	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
