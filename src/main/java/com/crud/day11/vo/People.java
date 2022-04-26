package com.crud.day11.vo;

import java.util.Date;

public class People {

	private int id;
	private String loginId;
	private int password;
	private String name;
	private String nickname;
	private String job;
	private int height;
	private int weight;
	private String gender;
	private String birth;
	private String email;
	private String hobby;
	private String introduce;
	private String phoneNumber;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
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
		return "People [id=" + id + ", loginId=" + loginId + ", password=" + password + ", name=" + name + ", nickname="
				+ nickname + ", job=" + job + ", height=" + height + ", weight=" + weight + ", gender=" + gender
				+ ", birth=" + birth + ", email=" + email + ", hobby=" + hobby + ", introduce=" + introduce
				+ ", phoneNumber=" + phoneNumber + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt
				+ ", getId()=" + getId() + ", getLoginId()=" + getLoginId() + ", getPassword()=" + getPassword()
				+ ", getName()=" + getName() + ", getNickname()=" + getNickname() + ", getJob()=" + getJob()
				+ ", getHeight()=" + getHeight() + ", getWeight()=" + getWeight() + ", getGender()=" + getGender()
				+ ", getBirth()=" + getBirth() + ", getEmail()=" + getEmail() + ", getHobby()=" + getHobby()
				+ ", getIntroduce()=" + getIntroduce() + ", getPhoneNumber()=" + getPhoneNumber() + ", getCreatedAt()="
				+ getCreatedAt() + ", getUpdatedAt()=" + getUpdatedAt() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

}
