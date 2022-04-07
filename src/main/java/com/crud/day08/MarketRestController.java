package com.crud.day08;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crud.day08.bo.MarketBO;
import com.crud.day08.model.Market;

@RestController
public class MarketRestController {

	@Autowired
	private MarketBO marketBO;
	
	@PostMapping("/day08/create")
	public Map<String, Object> create (@ModelAttribute Market market) {
		int row = marketBO.insertMarket(market);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "추가실패");
		}
		return result;
	}
	
	@PutMapping("/day08/update")
	public Map<String, Object> update (@ModelAttribute Market market) {
		int row = marketBO.updateMarketById(market);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		if (row < 1) {
			result.put("result", "error");
			result.put("errorMessage", "수정성공");
		}
		return result;
	}
	
	@DeleteMapping("/day08/delete")
	public Map<String, Object> delete (@ModelAttribute Market market) {
		marketBO.deleteMarketById(market);
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		
		return result;
	}
}
