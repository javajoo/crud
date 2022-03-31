package com.crud.day02;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day02.bo.MusicBO;
import com.crud.day02.model.Music;

@RestController
public class MusicRestController {

	@Autowired
	private MusicBO musicBO;
	
	/**
	 * 추가
	 * @param music
	 * @return
	 */
	@PostMapping("/day02/create")
	public Map<String, Object> create(@ModelAttribute Music music) {
		Map<String, Object> result = new HashMap<>();
		int row = musicBO.insertMusic(music);
		result.put("result", "success");
		if (row < 1) {
			result.put("errorMessage", "추가실패");
			result.put("result", "error");
		}
		return result;
	}
	
	/**
	 * 수정
	 * @param music
	 * @return
	 */
	@PutMapping("/day02/update")
	public Map<String, Object> update(@ModelAttribute Music music) {
		Map<String, Object> result = new HashMap<>();
		int row = musicBO.updateMusic(music);
		result.put("result", "success");
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "수정실패");
		}
		return result;
	}
	
	/**
	 * 삭제
	 * @param id
	 * @return
	 */
	@DeleteMapping("/day02/delete")
	public Map<String, Object> delete(@RequestParam("id") int id) {
		Map<String, Object> result = new HashMap<>();
		musicBO.deleteMusic(id);
		return result;
	}
}
