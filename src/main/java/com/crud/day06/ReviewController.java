package com.crud.day06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day06.bo.ReviewBO;
import com.crud.day06.model.Review;

@Controller
public class ReviewController {

	@Autowired
	private ReviewBO reviewBO;
	
	@RequestMapping("/day06/create_view")
	public String createView() {
		return "day06/create";
	}
	
	@RequestMapping("/day06/list_view")
	public String listView(Model model) {
		List<Review> reviewList = reviewBO.selectReviewList();
		model.addAttribute("reviewList",reviewList);
		
		return "day06/list";
	}
	
	@RequestMapping("/day06/detail_view")
	public String detailView(Model model, @RequestParam("id") int id) {
		Review review = reviewBO.selectReview(id);
		model.addAttribute("review",review);
		
		return "day06/detail";
	}
	
}
