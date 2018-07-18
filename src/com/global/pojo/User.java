package com.global.pojo;

public class User {

	private int id;
	private String username;
	private String password;
	private String tel;
	private int age;
	private String sex;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password="
				+ password + ", tel=" + tel + ", age=" + age + ", sex=" + sex
				+ "]";
	}
	public User() {
		super();
	}
	public User(String username, String password, String tel, int age,
			String sex) {
		super();
		this.username = username;
		this.password = password;
		this.tel = tel;
		this.age = age;
		this.sex = sex;
	}
	public User(int id, String username, String password, String tel, int age,
			String sex) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.tel = tel;
		this.age = age;
		this.sex = sex;
	}
}