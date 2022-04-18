package com.crud.day10.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day10.vo.Song;

@Repository
public interface SongMapper {

	public int insertSong(Song song);
	
	public List<Song> selectSongList();
	
	public int deleteSongById(Song song);
	
	public Song selectSongById(int id);
	
	public int updateSongById(Song song);
}
