package com.crud.day08.model;

import java.util.Date;

public class Market {

	private int id;
	private String nickname;
	private int temperate;
	private String title;
	private String category;
	private int price;
	private String content;
	private String area;
	private String startDate;
	private String endDate;
	private Date createdAt;
	private Date updatedAt;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getTemperate() {
		return temperate;
	}

	public void setTemperate(int temperate) {
		this.temperate = temperate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
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
		return "Market [id=" + id + ", nickname=" + nickname + ", temperate=" + temperate + ", title=" + title
				+ ", category=" + category + ", price=" + price + ", content=" + content + ", area=" + area
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", createdAt=" + createdAt + ", updatedAt="
				+ updatedAt + "]";
	}

}
