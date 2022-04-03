package com.crud.day05;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day05.bo.BookingBO;
import com.crud.day05.model.Booking;

@RestController
public class BookingRestController {

	@Autowired
	private BookingBO bookingBO;
	
	@PostMapping("/day05/create")
	public Map<String, Object> create(@ModelAttribute Booking booking) {
		
		Map<String, Object> result = new HashMap<>();
		int row = bookingBO.insertBooking(booking);
		result.put("result", "success");
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "추가실패");
		}
		return result;
	}
	
	@DeleteMapping("/day05/delete")
	public Map<String, Object> delete(@ModelAttribute Booking booking) {
		Map<String, Object> result = new HashMap<>();
		bookingBO.deleteBookingById(booking);
		result.put("result", "success");
		return result;
	}
	
	@PutMapping("/day05/update")
	public Map<String, Object> update(@ModelAttribute Booking booking) {
		Map<String, Object> result = new HashMap<>();
		int row = bookingBO.updateBookingById(booking);
		result.put("result", "success");
	
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "수정실패");
		}
		
		return result;
	}
}
