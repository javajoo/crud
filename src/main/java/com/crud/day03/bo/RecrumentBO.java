package com.crud.day03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day03.dao.RecrumentDAO;
import com.crud.day03.model.Recrument;

@Service
public class RecrumentBO {

	@Autowired
	private RecrumentDAO recrumentDAO;
	
	public int insertRecrument(Recrument recrument) {
		return recrumentDAO.insertRecrument(recrument);
	}
	
	public List<Recrument> selectRecrumentList() {
		return recrumentDAO.selectRecrumentList();
	}
	
	public void deleteRecrument(Recrument recrument) {
		recrumentDAO.deleteRecrument(recrument);
	}
	
	public Recrument selectRecrument(int  id) {
		return recrumentDAO.selectRecrument(id);
	}
	
	public int updateRecrument(Recrument recrument) {
		return recrumentDAO.updateRecrument(recrument);
	}
}
