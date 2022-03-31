package com.crud.day02.model;

import java.util.Date;

public class Music {

	private int id;
	private String title;
	private String albumTitle;
	private String name;
	private int playTime;
	private int memberCount;
	private String lyricist;
	private String composer;
	private int debut;
	private String agency;
	private String releaseDate;
	private int tracks;
	private String fanClub;
	private String introduce;
	private Date createdAt;
	private Date updatedAt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAlbumTitle() {
		return albumTitle;
	}
	public void setAlbumTitle(String albumTitle) {
		this.albumTitle = albumTitle;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPlayTime() {
		return playTime;
	}
	public void setPlayTime(int playTime) {
		this.playTime = playTime;
	}
	public int getMemberCount() {
		return memberCount;
	}
	public void setMemberCount(int memberCount) {
		this.memberCount = memberCount;
	}
	public String getLyricist() {
		return lyricist;
	}
	public void setLyricist(String lyricist) {
		this.lyricist = lyricist;
	}
	public String getComposer() {
		return composer;
	}
	public void setComposer(String composer) {
		this.composer = composer;
	}
	public int getDebut() {
		return debut;
	}
	public void setDebut(int debut) {
		this.debut = debut;
	}
	public String getAgency() {
		return agency;
	}
	public void setAgency(String agency) {
		this.agency = agency;
	}
	public String getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	public int getTracks() {
		return tracks;
	}
	public void setTracks(int tracks) {
		this.tracks = tracks;
	}
	public String getFanClub() {
		return fanClub;
	}
	public void setFanClub(String fanClub) {
		this.fanClub = fanClub;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
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
		return "Music [id=" + id + ", title=" + title + ", albumTitle=" + albumTitle + ", name=" + name + ", playTime="
				+ playTime + ", memberCount=" + memberCount + ", lyricist=" + lyricist + ", composer=" + composer
				+ ", debut=" + debut + ", agency=" + agency + ", releaseDate=" + releaseDate + ", tracks=" + tracks
				+ ", fanClub=" + fanClub + ", introduce=" + introduce + ", createdAt=" + createdAt + ", updatedAt="
				+ updatedAt + "]";
	}



}
