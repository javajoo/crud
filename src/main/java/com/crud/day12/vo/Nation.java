package com.crud.day12.vo;

import java.util.Date;

public class Nation {

	private int id;
	private String nationalAnthem;
	private String language;
	private String capital;
	private String moneyUnit;
	private String area;
	private String population;
	private String gdp;
	private String climate;
	private String history;
	private Date createdAt;
	private Date updatedAt;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNationalAnthem() {
		return nationalAnthem;
	}

	public void setNationalAnthem(String nationalAnthem) {
		this.nationalAnthem = nationalAnthem;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getCapital() {
		return capital;
	}

	public void setCapital(String capital) {
		this.capital = capital;
	}

	public String getMoneyUnit() {
		return moneyUnit;
	}

	public void setMoneyUnit(String moneyUnit) {
		this.moneyUnit = moneyUnit;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getPopulation() {
		return population;
	}

	public void setPopulation(String population) {
		this.population = population;
	}

	public String getGdp() {
		return gdp;
	}

	public void setGdp(String gdp) {
		this.gdp = gdp;
	}

	public String getClimate() {
		return climate;
	}

	public void setClimate(String climate) {
		this.climate = climate;
	}

	public String getHistory() {
		return history;
	}

	public void setHistory(String history) {
		this.history = history;
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
		return "Nation [id=" + id + ", nationalAnthem=" + nationalAnthem + ", language=" + language + ", capital="
				+ capital + ", moneyUnit=" + moneyUnit + ", area=" + area + ", population=" + population + ", gdp="
				+ gdp + ", climate=" + climate + ", history=" + history + ", createdAt=" + createdAt + ", updatedAt="
				+ updatedAt + "]";
	}

}
