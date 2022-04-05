package com.crud.day07.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day07.model.Used;

@Repository
public interface UsedDAO {

	
	public int insertUsed(Used used);
	
	public List<Used> selectUsedList();
	
	public void deleteUsedById(Used used);
	
	public Used selectUsedById(int id);
	
	public int updateUsedById(Used used);
}
