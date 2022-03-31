package com.crud.day01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day01.bo.ResumeBO;
import com.crud.day01.model.Resume;

@Controller
public class ResumeController {

	@Autowired
	private ResumeBO resumeBO;

	// 목록 화면
	@RequestMapping("/day01/list_view")
	public String listView(Model model) {
		
		List<Resume> resumelist = resumeBO.selectResumeList();
		model.addAttribute("resumelist",resumelist);
		
		return "day01/list";
	}
	
	// 추가 화면
	@RequestMapping("/day01/insert_view")
	public String insertView() {

		return "day01/insert";
	}
	
	// 상세 화면
	@RequestMapping("/day01/detail_view")
	public String datailView(Model model, @RequestParam("id") int id) {
		Resume resume = resumeBO.selectResumeByid(id);
		model.addAttribute("resume",resume);
		return "day01/detail";
	}
	
}
