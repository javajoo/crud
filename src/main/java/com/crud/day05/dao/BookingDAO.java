package com.crud.day05.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day05.model.Booking;

@Repository
public interface BookingDAO {

	public int insertBooking(Booking booking);
	
	public List<Booking> selectBookingList();
	
	public void deleteBookingById(Booking booking);
	
	public Booking selectBookingById(int id);
	
	public int updateBookingById(Booking booking);
}
