package com.crud.day04;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day04.bo.InfoBO;
import com.crud.day04.model.Info;

@Controller
public class InfoController {

	@Autowired
	private InfoBO infoBO;
	
	// 추가 화면
	@RequestMapping("/day04/create_view")
	public String createView() {
		return "day04/create";
	}
	
	// 리스트 화면
	@RequestMapping("/day04/list_view")
	public String listView(Model model) {
		List<Info> infoList = infoBO.selectInfo();
		model.addAttribute("infoList",infoList);
		return "day04/list";
	}
	
	// 상세 화면
	@RequestMapping("/day04/detail_view")
	public String detailView(Model model, @RequestParam("id") int id) {
		Info info = infoBO.selectInfoById(id);
		model.addAttribute("info",info);
		return "day04/detail";
	}
}
