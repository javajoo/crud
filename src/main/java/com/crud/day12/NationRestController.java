package com.crud.day12;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day12.bo.NationBO;
import com.crud.day12.vo.Nation;

@RestController
public class NationRestController {

	@Autowired
	private NationBO nationBO;
	
	@PostMapping("/day12/create")
	public Map<String, Object> create(@ModelAttribute Nation nation) {
		int row = nationBO.insertNation(nation);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "추가실패!!!");
		}
		return result;
	}
	
	@DeleteMapping("/day12/delete")
	public Map<String, Object> delete(@ModelAttribute Nation nation) {
		int row = nationBO.deleteNationById(nation);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "삭제실패!!!!");
		}
		return result;
		
	}
	
	@PutMapping("/day12/update")
	public Map<String, Object> update(@ModelAttribute Nation nation) {
		int row = nationBO.updateNationById(nation);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "삭제실패!!!!");
		}
		return result;
	}
}
