package com.crud.day11.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day11.vo.People;

@Repository
public interface PeopleMapper {

	public int insertPeople(People people);
	
	public List<People> selectPeopleList();
	
	public int deletePeopleById(People people);
	
	public People selectPeopleById(int id);
	
	public int updatePeopleById(People people);
}
