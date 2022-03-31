package com.crud.day01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day01.bo.ResumeBO;
import com.crud.day01.model.Resume;

@RestController 
@RequestMapping("/day01")
public class ResumeRestController {

	
	@Autowired
	private ResumeBO resumeBO;
	
	/**
	 * 추가
	 * @param resume
	 * @return
	 */
	@PostMapping("/insert")
	public Map<String, Object> insert(@ModelAttribute Resume resume) {
		Map<String, Object> result = new HashMap<>();
		int row = resumeBO.insertResume(resume);
		result.put("result", "success");
		
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "추가실패");
		}
		
		return result;
	}
	
	/**
	 * 수정
	 * @param resume
	 * @return
	 */
	@PutMapping("/update")
	public Map<String, Object> update(@ModelAttribute Resume resume) {
		Map<String, Object> result = new HashMap<>();
		int row = resumeBO.updateResume(resume);
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
	@DeleteMapping("/delete")
	public Map<String, Object> delete( @RequestParam("id") int id) {
		Map<String, Object> result = new HashMap<>();
		resumeBO.deleteResume(id);
		
		return result;
	}
}
