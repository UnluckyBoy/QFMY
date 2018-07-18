package com.global.pojo;

public class House {

	private int id;
	private String roomname;
	private double price;
	private String address;//详细地址
	private String description;//具体描述
	private int room_num;//房间数量
	private String duration;//出租时长
	private String room_type;//房间类型
	private int status;//0为不可出租，1为可出租
	private String landlord;
	private int rent_num;//被出租的次数，用于首页推荐
	private String room_image1;
	private String room_image2;
	private String room_image3;
	private String room_image4;
	private String city;
	private String rent_status;//审核状态：1为审核，0为未审核
	public House() {
		super();
	}
	public House(String roomname, double price, String address,
			String description, int room_num, String duration,
			String room_type, int status, String landlord, int rent_num,
			String room_image1, String room_image2, String room_image3,
			String room_image4, String city, String rent_status) {
		super();
		this.roomname = roomname;
		this.price = price;
		this.address = address;
		this.description = description;
		this.room_num = room_num;
		this.duration = duration;
		this.room_type = room_type;
		this.status = status;
		this.landlord = landlord;
		this.rent_num = rent_num;
		this.room_image1 = room_image1;
		this.room_image2 = room_image2;
		this.room_image3 = room_image3;
		this.room_image4 = room_image4;
		this.city = city;
		this.rent_status = rent_status;
	}
	public House(int id, String roomname, double price, String address,
			String description, int room_num, String duration,
			String room_type, int status, String landlord, int rent_num,
			String room_image1, String room_image2, String room_image3,
			String room_image4, String city, String rent_status) {
		super();
		this.id = id;
		this.roomname = roomname;
		this.price = price;
		this.address = address;
		this.description = description;
		this.room_num = room_num;
		this.duration = duration;
		this.room_type = room_type;
		this.status = status;
		this.landlord = landlord;
		this.rent_num = rent_num;
		this.room_image1 = room_image1;
		this.room_image2 = room_image2;
		this.room_image3 = room_image3;
		this.room_image4 = room_image4;
		this.city = city;
		this.rent_status = rent_status;
	}
	@Override
	public String toString() {
		return "House [id=" + id + ", roomname=" + roomname + ", price="
				+ price + ", address=" + address + ", description="
				+ description + ", room_num=" + room_num + ", duration="
				+ duration + ", room_type=" + room_type + ", status=" + status
				+ ", landlord=" + landlord + ", rent_num=" + rent_num
				+ ", room_image1=" + room_image1 + ", room_image2="
				+ room_image2 + ", room_image3=" + room_image3
				+ ", room_image4=" + room_image4 + ", city=" + city
				+ ", rent_status=" + rent_status + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoomname() {
		return roomname;
	}
	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getRoom_num() {
		return room_num;
	}
	public void setRoom_num(int room_num) {
		this.room_num = room_num;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getLandlord() {
		return landlord;
	}
	public void setLandlord(String landlord) {
		this.landlord = landlord;
	}
	public int getRent_num() {
		return rent_num;
	}
	public void setRent_num(int rent_num) {
		this.rent_num = rent_num;
	}
	public String getRoom_image1() {
		return room_image1;
	}
	public void setRoom_image1(String room_image1) {
		this.room_image1 = room_image1;
	}
	public String getRoom_image2() {
		return room_image2;
	}
	public void setRoom_image2(String room_image2) {
		this.room_image2 = room_image2;
	}
	public String getRoom_image3() {
		return room_image3;
	}
	public void setRoom_image3(String room_image3) {
		this.room_image3 = room_image3;
	}
	public String getRoom_image4() {
		return room_image4;
	}
	public void setRoom_image4(String room_image4) {
		this.room_image4 = room_image4;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getRent_status() {
		return rent_status;
	}
	public void setRent_status(String rent_status) {
		this.rent_status = rent_status;
	}
}
