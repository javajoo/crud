package com.crud.day05.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day05.dao.BookingDAO;
import com.crud.day05.model.Booking;

@Service
public class BookingBO {

	@Autowired
	public BookingDAO bookingDAO;
	
	public int insertBooking(Booking booking) {
		return bookingDAO.insertBooking(booking);
	}
	
	public List<Booking> selectBookingList() {
		return bookingDAO.selectBookingList();
	}
	
	public void deleteBookingById(Booking booking) {
		bookingDAO.deleteBookingById(booking);
	}
	
	public Booking selectBookingById(int id) {
		return bookingDAO.selectBookingById(id);
	}
	
	public int updateBookingById(Booking booking) {
		return bookingDAO.updateBookingById(booking);
	}
}
