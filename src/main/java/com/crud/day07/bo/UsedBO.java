package com.crud.day07.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day07.dao.UsedDAO;
import com.crud.day07.model.Used;

@Service
public class UsedBO {

	@Autowired
	private UsedDAO usedDAO;
	
	public int insertUsed(Used used) {
		return usedDAO.insertUsed(used);
	}
	
	public List<Used> selectUsedList() {
		return usedDAO.selectUsedList();
	}
	
	public void deleteUsedById(Used used) {
		usedDAO.deleteUsedById(used);
	}
	
	public Used selectUsedById(int id) {
		return usedDAO.selectUsedById(id);
	}
	
	public int updateUsedById(Used used) {
		return usedDAO.updateUsedById(used);
	}
}
