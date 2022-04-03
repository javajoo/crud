package com.crud.day04.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day04.dao.InfoDAO;
import com.crud.day04.model.Info;

@Service
public class InfoBO {

	@Autowired
	private InfoDAO infoDAO;
	
	public int insertInfo(Info info) {
		return  infoDAO.insertInfo(info);
	}
	
	public List<Info> selectInfo() {
		return infoDAO.selectInfo();
	}
	
	public void deleteInfoById(Info info) {
		infoDAO.deleteInfoById(info);
	}
	
	public Info selectInfoById(int id) {
		return infoDAO.selectInfoById(id);
	}
	
	public int updateInfo(Info info) {
		return infoDAO.updateInfo(info);
	}
}
