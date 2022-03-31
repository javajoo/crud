package com.crud.day01.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day01.model.Resume;

@Repository
public interface ResumeDAO {

	public int insertResume(Resume resume);
	
	public List<Resume> selectResumeList();
	
	public int updateResume(Resume resume);
	
	public void deleteResume(int id);
	
	public Resume selectResumeByid(int id);
	
}
