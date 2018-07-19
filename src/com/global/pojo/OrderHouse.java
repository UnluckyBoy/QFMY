package com.global.pojo;

public class OrderHouse {

	private String roomname;
	private String renter;
	private String room_image1;
	private String room_type;
	private double price;
	private String duration;//³ö×âÊ±³¤
	private String city;
	private String address;//ÏêÏ¸µØÖ·
	private String status;//ÊÜÀí×´Ì¬
	private String unsubscribe;//ÍË¶©×´Ì¬
	public OrderHouse() {
		super();
	}
	public OrderHouse(String roomname, String renter, String room_image1,
			String room_type, double price, String duration, String city,
			String address, String status, String unsubscribe) {
		super();
		this.roomname = roomname;
		this.renter = renter;
		this.room_image1 = room_image1;
		this.room_type = room_type;
		this.price = price;
		this.duration = duration;
		this.city = city;
		this.address = address;
		this.status = status;
		this.unsubscribe = unsubscribe;
	}
	public String getRoomname() {
		return roomname;
	}
	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}
	public String getRenter() {
		return renter;
	}
	public void setRenter(String renter) {
		this.renter = renter;
	}
	public String getRoom_image1() {
		return room_image1;
	}
	public void setRoom_image1(String room_image1) {
		this.room_image1 = room_image1;
	}
	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUnsubscribe() {
		return unsubscribe;
	}
	public void setUnsubscribe(String unsubscribe) {
		this.unsubscribe = unsubscribe;
	}
	@Override
	public String toString() {
		return "OrderHouse [roomname=" + roomname + ", renter=" + renter
				+ ", room_image1=" + room_image1 + ", room_type=" + room_type
				+ ", price=" + price + ", duration=" + duration + ", city="
				+ city + ", address=" + address + ", status=" + status
				+ ", unsubscribe=" + unsubscribe + "]";
	}
}
