package com.crud.day01.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day01.dao.ResumeDAO;
import com.crud.day01.model.Resume;

@Service
public class ResumeBO {

	@Autowired
	private ResumeDAO resumeDAO;
	
	public int insertResume(Resume resume) {
		return resumeDAO.insertResume(resume);
	}
	
	public List<Resume> selectResumeList() {
		return resumeDAO.selectResumeList();
	}
	
	public int updateResume(Resume resume) {
		return resumeDAO.updateResume(resume);
	}
	
	public void deleteResume(int id) {
		resumeDAO.deleteResume(id);
	}
	
	public Resume selectResumeByid(int id) {
		return resumeDAO.selectResumeByid(id);
	}
	
}
