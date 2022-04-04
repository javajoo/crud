package com.crud.day06.model;

import java.util.Date;

public class Review {

	private int id;
	private String store;
	private String phoneNumber;
	private String address;
	private String businessNumber;
	private String introduce;
	private String menu;
	private int minPrice;
	private String method;
	private int deliveryTime;
	private int deliveryTip;
	private String userName;
	private int point;
	private String review;
	private Date createdAt;
	private Date updatedAt;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStore() {
		return store;
	}

	public void setStore(String store) {
		this.store = store;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBusinessNumber() {
		return businessNumber;
	}

	public void setBusinessNumber(String businessNumber) {
		this.businessNumber = businessNumber;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public int getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(int minPrice) {
		this.minPrice = minPrice;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public int getDeliveryTime() {
		return deliveryTime;
	}

	public void setDeliveryTime(int deliveryTime) {
		this.deliveryTime = deliveryTime;
	}

	public int getDeliveryTip() {
		return deliveryTip;
	}

	public void setDeliveryTip(int deliveryTip) {
		this.deliveryTip = deliveryTip;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
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
		return "Review [id=" + id + ", store=" + store + ", phoneNumber=" + phoneNumber + ", address=" + address
				+ ", businessNumber=" + businessNumber + ", introduce=" + introduce + ", menu=" + menu + ", minPrice="
				+ minPrice + ", method=" + method + ", deliveryTime=" + deliveryTime + ", deliveryTip=" + deliveryTip
				+ ", userName=" + userName + ", point=" + point + ", review=" + review + ", createdAt=" + createdAt
				+ ", updatedAt=" + updatedAt + "]";
	}

}
