package com.crud.day04;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day04.bo.InfoBO;
import com.crud.day04.model.Info;

@RestController
public class InfoRestController {

	@Autowired
	private InfoBO infoBO;
	
	/**
	 * 추가 api
	 * @param info
	 * @return
	 */
	@PostMapping("/day04/create")
	public Map<String, Object> create (@ModelAttribute Info info) {
		Map<String, Object> result = new HashMap<>();
		int row = infoBO.insertInfo(info);
		result.put("result", "success");
		
		
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "수정실패");
		}
		
		return result;
	}
	
	/**
	 * 삭제 api
	 * @param info
	 * @return
	 */
	@DeleteMapping("/day04/delete")
	public Map<String, Object> delete (@ModelAttribute Info info) {
		Map<String, Object> result = new HashMap<>();
		infoBO.deleteInfoById(info);
		result.put("result", "success");
		return result;
		
	}
	
	/**
	 * 수정 api
	 * @param info
	 * @return
	 */
	@PutMapping("/day04/update")
	public Map<String, Object> update (@ModelAttribute Info info){
		Map<String, Object> result = new HashMap<>();
		int row = infoBO.updateInfo(info);
		result.put("result", "success");
		if (row < 1) {
		result.put("result", "error");
		result.put("errorMessage", "삭제실패");
		}
		return result;
		
	}
}
