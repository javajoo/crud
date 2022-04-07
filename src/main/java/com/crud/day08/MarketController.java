package com.crud.day08;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.day08.bo.MarketBO;
import com.crud.day08.model.Market;

@Controller 
public class MarketController {

	@Autowired
	private MarketBO marketBO;
	
	@RequestMapping("/day08/create_view")
	public String createView() {
		return "day08/create";
	}
	
	@RequestMapping("/day08/list_view")
	public String listView(Model model) {
		List<Market> marketList = marketBO.selectMarketList();
		model.addAttribute("marketList",marketList);
		return "day08/list";
	}
	
	@RequestMapping("/day08/detail_view")
	public String detailView(Model model, @RequestParam("id") int id) {
		Market market = marketBO.selectMarketById(id);
			model.addAttribute("market",market);
			return "day08/detail";
		
	}
}
