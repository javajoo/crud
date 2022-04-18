package com.crud.day10;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day10.service.SongService;
import com.crud.day10.vo.Song;

@RestController
public class SongRestController {

	@Autowired
	private SongService songService;
	
	@PostMapping("/day10/create")
	public Map<String, Object> create (@ModelAttribute Song song) {
		Map<String, Object> result = new HashMap<>();
		int row = songService.insertSong(song);
		result.put("result", "success");
		
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "삭제실패");
		}
		return result;
	}
	
	@DeleteMapping("/day10/delete")
	public Map<String, Object> delete(@ModelAttribute Song song) {
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		int row = songService.deleteSongById(song);
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "삭제실패");
		}
		return result;
	}
	
	@PutMapping("/day10/update")
	public Map<String, Object> update(@ModelAttribute Song song) {
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		int row = songService.updateSongById(song);
		if (row < 1) {
			result.put("reuslt", "error");
			result.put("errorMessage", "수정실패");
		}
		return result;
	}
}
