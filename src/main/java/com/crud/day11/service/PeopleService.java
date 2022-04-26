package com.crud.day11.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day11.mapper.PeopleMapper;
import com.crud.day11.vo.People;

@Service
public class PeopleService {

	@Autowired
	private PeopleMapper peopleMapper;
	
	public int insertPeople(People people) {
		return peopleMapper.insertPeople(people);
	}
	
	public List<People> selectPeopleList() {
		return peopleMapper.selectPeopleList();
	}
	
	public int deletePeopleById(People people) {
		return peopleMapper.deletePeopleById(people);
	}
	
	public People selectPeopleById(int id) {
		return peopleMapper.selectPeopleById(id);
	}
	
	public int updatePeopleById(People people) {
		return peopleMapper.updatePeopleById(people);
	}
}
