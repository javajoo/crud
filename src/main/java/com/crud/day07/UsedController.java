package com.crud.day07;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day07.bo.UsedBO;
import com.crud.day07.model.Used;

@Controller
public class UsedController {

	
	@Autowired
	private UsedBO usedBO;
	
	@RequestMapping("/day07/create_view")
	public String createView() {
		return "day07/create";
	}
	
	@RequestMapping("/day07/list_view")
	public String listView(Model model) {
		List<Used> usedList = usedBO.selectUsedList();
		model.addAttribute("usedList",usedList);
		return "day07/list";
	}
	
	@RequestMapping("/day07/detail_view")
	public String detailView(Model model, @RequestParam("id") int id) {
		Used used = usedBO.selectUsedById(id);
		model.addAttribute("used",used);
		
		return "day07/detail";
		
	}
}
