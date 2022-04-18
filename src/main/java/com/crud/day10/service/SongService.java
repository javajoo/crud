package com.crud.day10.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day10.mapper.SongMapper;
import com.crud.day10.vo.Song;

@Service
public class SongService {

	@Autowired
	private SongMapper songMapper;
	
	public int insertSong(Song song) {
		return songMapper.insertSong(song);
	}
	
	public List<Song> selectSongList() {
		return songMapper.selectSongList();
	}

	public int deleteSongById(Song song) {
		return songMapper.deleteSongById(song);
	}
	
	public Song selectSongById(int id) {
		return songMapper.selectSongById(id);
	}
	
	public int updateSongById(Song song) {
		return songMapper.updateSongById(song);
	}
}
