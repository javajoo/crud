package com.crud.day07;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day07.bo.UsedBO;
import com.crud.day07.model.Used;

@RestController
public class UsedRestController {

	@Autowired
	private UsedBO userBO;
	
	@PostMapping("/day07/create")
	public Map<String, Object> create(@ModelAttribute Used used) {
		
		int row = userBO.insertUsed(used);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		if(row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "추가실패");
		}
		return result;
	}
	
	@DeleteMapping("/day07/delete")
	public Map<String, Object> delete(@ModelAttribute Used used) {
		
		userBO.deleteUsedById(used);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		return result;
	
	}
	
	@PutMapping("/day07/update")
	public Map<String, Object> update (@ModelAttribute Used used) {
		
		int row = userBO.updateUsedById(used);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "수정실패");
		}
			return result;
	}
	
}
