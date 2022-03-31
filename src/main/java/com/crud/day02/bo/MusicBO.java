package com.crud.day02.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day02.dao.MusicDAO;
import com.crud.day02.model.Music;

@Service
public class MusicBO {
	
	@Autowired
	private MusicDAO musicDAO;

	public int insertMusic(Music music) {
		return musicDAO.insertMusic(music);
	}
	
	public List<Music> selectMusicList() {
		return musicDAO.selectMusicList();
	}
	
	public Music selectMusic(int id) {
		return musicDAO.selectMusic(id);
	}
	
	public int updateMusic(Music music) {
		return musicDAO.updateMusic(music); 
	}
	
	public void deleteMusic(int id) {
		musicDAO.deleteMusic(id);
	}
}
