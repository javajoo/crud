package com.crud.day06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day06.dao.ReviewDAO;
import com.crud.day06.model.Review;

@Service
public class ReviewBO {

	@Autowired
	private ReviewDAO reviewDAO;
	
	public int insertReview(Review review) {
		return reviewDAO.insertReview(review);
	}
	
	public List<Review> selectReviewList() {
		return reviewDAO.selectReviewList();
	}
	
	public void deleteReviewById(Review review) {
		reviewDAO.deleteReviewById(review);
	}
	
	public Review selectReview(int id) {
		return reviewDAO.selectReview(id);
	}
	
	public int updateReviewById(Review review) {
		return reviewDAO.updateReviewById(review);
	}
}
