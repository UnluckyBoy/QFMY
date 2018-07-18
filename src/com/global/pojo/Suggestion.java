package com.global.pojo;

public class Suggestion {

	private int id;
	private String username;
	private String tel;
	private String subject;
	private String sub_content;
	public Suggestion() {
		super();
	}
	public Suggestion(String username, String tel, String subject,
			String sub_content) {
		super();
		this.username = username;
		this.tel = tel;
		this.subject = subject;
		this.sub_content = sub_content;
	}
	public Suggestion(int id, String username, String tel, String subject,
			String sub_content) {
		super();
		this.id = id;
		this.username = username;
		this.tel = tel;
		this.subject = subject;
		this.sub_content = sub_content;
	}
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
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getSub_content() {
		return sub_content;
	}
	public void setSub_content(String sub_content) {
		this.sub_content = sub_content;
	}
	@Override
	public String toString() {
		return "Suggestion [id=" + id + ", username=" + username + ", tel="
				+ tel + ", subject=" + subject + ", sub_content=" + sub_content
				+ "]";
	}
}
