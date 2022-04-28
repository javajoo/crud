package com.crud.day12.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day12.dao.NationDAO;
import com.crud.day12.vo.Nation;

@Service
public class NationBO {

	@Autowired
	private NationDAO nationDAO;
	
	public int insertNation(Nation nation) {
		return nationDAO.insertNation(nation);
	}
	
	public List<Nation> selectNationList() {
		return nationDAO.selectNationList();
	}
	
	public int deleteNationById(Nation nation) {
		return nationDAO.deleteNationById(nation);
	}
	
	public Nation selectNationById(int id) {
		return nationDAO.selectNationById(id);
	}
	
	public int updateNationById(Nation nation) {
		return nationDAO.updateNationById(nation);
	}
}
