package com.crud.day11;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day11.service.PeopleService;
import com.crud.day11.vo.People;

@Controller
public class PeopleController {

	@Autowired
	private PeopleService peopleService;
	
	@RequestMapping("/day11/create_view")
	public String createView() {
		return "day11/create";
	}
	
	
	@RequestMapping("/day11/list_view")
	public String listView(Model model) {
		
		List<People> peopleList = peopleService.selectPeopleList();
		model.addAttribute("peopleList",peopleList);
		
		return "/day11/list";
	}
	
	@RequestMapping("/day11/detail_view")
	public String detailView(@RequestParam("id") int id, Model model) {
		People people = peopleService.selectPeopleById(id);
		model.addAttribute("people",people);
		
		return "/day11/detail";
	}
}
