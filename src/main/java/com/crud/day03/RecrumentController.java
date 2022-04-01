package com.crud.day03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day03.bo.RecrumentBO;
import com.crud.day03.model.Recrument;

@Controller
public class RecrumentController {
	
	@Autowired
	private RecrumentBO recrumentBO;
	
	// 추가 화면
	@RequestMapping("/day03/create_view")
	public String createView() {
		return "/day03/create";
	}
	
	// 목록 화면
	@RequestMapping("/day03/list_view")
	public String listView(Model model) {
		List<Recrument> recrumentList = recrumentBO.selectRecrumentList();
		model.addAttribute("recrumentList",recrumentList);
		return "/day03/list";
	}
	
	// 상세 화면
	@RequestMapping("/day03/detail_view")
	public String detailView(Model model, @RequestParam("id") int id) {
		Recrument recrument = recrumentBO.selectRecrument(id);
		model.addAttribute("recrument",recrument);
		return "/day03/detail";
	}
}
