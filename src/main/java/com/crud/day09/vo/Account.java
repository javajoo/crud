package com.crud.day09.vo;

import java.util.Date;

public class Account {

	private int id;
	private String loginId;
	private int password;
	private int confirmPassword;
	private String name;
	private String email;
	private String lecture;
	private Date createdAt;
	private Date updatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public int getPassword() {
		return password;
	}
	public void setPassword(int password) {
		this.password = password;
	}
	public int getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(int confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLecture() {
		return lecture;
	}
	public void setLecture(String lecture) {
		this.lecture = lecture;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	@Override
	public String toString() {
		return "Account [id=" + id + ", loginId=" + loginId + ", password=" + password + ", confirmPassword="
				+ confirmPassword + ", name=" + name + ", email=" + email + ", lecture=" + lecture + ", createdAt="
				+ createdAt + ", updatedAt=" + updatedAt + "]";
	}


}
