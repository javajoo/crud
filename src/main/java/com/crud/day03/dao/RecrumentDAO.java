package com.crud.day03.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day03.model.Recrument;

@Repository
public interface RecrumentDAO {

	public int insertRecrument(Recrument recrument);
	
	public List<Recrument> selectRecrumentList();
	
	public void deleteRecrument(Recrument recrument);
	
	public Recrument selectRecrument(int id);
	
	public int updateRecrument(Recrument recrument);
}
