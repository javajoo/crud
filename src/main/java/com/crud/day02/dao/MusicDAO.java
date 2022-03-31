package com.crud.day02.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day02.model.Music;

@Repository
public interface MusicDAO {
	
	public int insertMusic(Music music);
	
	public List<Music> selectMusicList();

	public Music selectMusic(int id);
	
	public int updateMusic(Music music);
	
	public void deleteMusic(int id);
}
