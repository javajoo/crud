package com.crud.day06.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day06.model.Review;

@Repository
public interface ReviewDAO {

	public int insertReview(Review review);
	
	public List<Review> selectReviewList();
	
	public void deleteReviewById(Review review);
	
	public Review selectReview(int id);
	
	public int updateReviewById(Review review);
}
