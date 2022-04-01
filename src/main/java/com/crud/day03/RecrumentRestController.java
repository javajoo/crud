package com.crud.day03;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day03.bo.RecrumentBO;
import com.crud.day03.model.Recrument;

@RestController
public class RecrumentRestController {

	@Autowired
	private RecrumentBO recrumentBO;
	
	/**
	 * 추가 api
	 * @param recrument
	 * @return
	 */
	@PostMapping("/day03/create")
	public Map<String, Object> create (@ModelAttribute Recrument recrument) {
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		int row = recrumentBO.insertRecrument(recrument);
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "추가실패");
		}
		return result;
	}
	
	/**
	 * 삭제 api
	 * @param recrument
	 * @return
	 */
	@DeleteMapping("/day03/delete")
	public Map<String, Object> delete(@ModelAttribute Recrument recrument) {
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		recrumentBO.deleteRecrument(recrument);
		
		return result;
	}
	
	/**
	 * 수정 api
	 * @param recrument
	 * @return
	 */
	@PutMapping("/day03/update")
	public Map<String, Object> update(@ModelAttribute Recrument recrument) {
		Map<String, Object> result = new HashMap<>();
	
		int row = recrumentBO.updateRecrument(recrument);
		result.put("result", "success");
		if( row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "수정실패");
		}
		return result;
	
	}

}
