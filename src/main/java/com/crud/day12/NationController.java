package com.crud.day12;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day12.bo.NationBO;
import com.crud.day12.vo.Nation;

@Controller
public class NationController {

	@Autowired
	private NationBO nationBO;
	
	@RequestMapping("/day12/create_view")
	public String createdView() {
		return "day12/create";
	}
	
	@RequestMapping("/day12/list_view")
	public String listView(Model model) {
		List<Nation> nationList = nationBO.selectNationList();
		model.addAttribute("nationList",nationList);
		return "day12/list";
	}
	
	@RequestMapping("/day12/detail_view")
	public String detailView(Model model, @RequestParam("id") int id) {
		Nation nation = nationBO.selectNationById(id);
		model.addAttribute("nation",nation);
		return "day12/detail";
	}
}
