package com.crud.day04.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day04.model.Info;

@Repository
public interface InfoDAO {

	public int insertInfo(Info info);
	
	public List<Info> selectInfo();
	
	public void deleteInfoById(Info info);
	
	public Info selectInfoById(int id);
	
	public int updateInfo(Info info);
}
