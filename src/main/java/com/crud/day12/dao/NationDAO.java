package com.crud.day12.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day12.vo.Nation;

@Repository
public interface NationDAO {

	public int insertNation(Nation nation);
	
	public List<Nation> selectNationList();
	
	public int deleteNationById(Nation nation);
	
	public Nation selectNationById(int id);
	
	public int updateNationById(Nation nation);
}
