package com.crud.day04.model;

import java.util.Date;

public class Info {

	
	private int id;
	private String name;
	private String phoneNumber;
	private String email;
	private String dreamJob;
	private int year;
	private int semester;
	private String term;
	private String subject;
	private int score;
	private Date createdAt;
	private Date updatedAt;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDreamJob() {
		return dreamJob;
	}
	public void setDreamJob(String dreamJob) {
		this.dreamJob = dreamJob;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
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
		return "Info [id=" + id + ", name=" + name + ", phoneNumber=" + phoneNumber + ", email=" + email + ", dreamJob="
				+ dreamJob + ", year=" + year + ", semester=" + semester + ", term=" + term + ", subject=" + subject
				+ ", score=" + score + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}
	
	
}
