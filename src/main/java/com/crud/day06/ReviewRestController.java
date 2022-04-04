package com.crud.day06;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day06.bo.ReviewBO;
import com.crud.day06.model.Review;

@RestController
public class ReviewRestController {

	
	@Autowired
	private ReviewBO reviewBO;
	
	@PostMapping("/day06/create")
	public Map<String, Object> create (@ModelAttribute Review review) {
		
		int row = reviewBO.insertReview(review);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		if (row < 1) {
		result.put("result", "error");	
		result.put("errorMessage", "추가실패");	
		}
		return result;
	}
	
	@DeleteMapping("/day06/delete")
	public Map<String, Object> delete(@ModelAttribute Review review) {
		reviewBO.deleteReviewById(review);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		return result;
	}
	
	@PutMapping("/day06/update")
	public Map<String, Object> update(@ModelAttribute Review review) {
		Map<String, Object> result = new HashMap<>();
		int row = reviewBO.updateReviewById(review);
		result.put("result", "success");
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "수정실패");
		}
		
		return result;
	}
}
