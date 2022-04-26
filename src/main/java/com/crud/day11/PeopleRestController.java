package com.crud.day11;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day11.service.PeopleService;
import com.crud.day11.vo.People;

@RestController
public class PeopleRestController {

	@Autowired
	private PeopleService peopleService;
	
	@PostMapping("/day11/create")
	public Map<String, Object> create(@ModelAttribute People people) {

		int row  = peopleService.insertPeople(people);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "추가실패!!!");
		} 
		
		return result;
	}
	
	@DeleteMapping("/day11/delete")
	public Map<String, Object> delete(@ModelAttribute People people) {
		int row = peopleService.deletePeopleById(people);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "삭제실패!!!");
		}
		
		return result;
		
	}
	
	@PutMapping("/day11/update")
	public Map<String, Object> update(@ModelAttribute People people) {
		int row = peopleService.updatePeopleById(people);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "수정실패!!!");
		}
		
		return result;
	}
}
