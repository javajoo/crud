package com.crud.day05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day05.bo.BookingBO;
import com.crud.day05.model.Booking;

@Controller
public class BookingController {

	@Autowired
	private BookingBO bookingBO;
	
	@RequestMapping("/day05/create_view")
	public String createView() {
		return "day05/create";
	}
	
	@RequestMapping("/day05/list_view")
	public String listView(Model model) {
		List<Booking> bookingList = bookingBO.selectBookingList();
		model.addAttribute("bookingList",bookingList);
		return "day05/list";
	}
	
	@RequestMapping("/day05/detail_view")
	public String detailView(Model model, @RequestParam("id") int id) {
		Booking booking = bookingBO.selectBookingById(id);
		model.addAttribute("booking",booking);
		return "day05/detail";
	}
}
