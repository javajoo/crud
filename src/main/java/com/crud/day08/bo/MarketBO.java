package com.crud.day08.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.day08.dao.MarketDAO;
import com.crud.day08.model.Market;

@Service
public class MarketBO {

	@Autowired
	private MarketDAO marketDAO;
	
	public int insertMarket(Market market) {
		return marketDAO.insertMarket(market);
	}
	
	public List<Market> selectMarketList() {
		return marketDAO.selectMarketList();
	}
	
	public Market selectMarketById(int id) {
		return marketDAO.selectMarketById(id);
	}
	
	public int updateMarketById(Market market) {
		return marketDAO.updateMarketById(market);
	}
	
	public void deleteMarketById(Market market) {
		marketDAO.deleteMarketById(market);
	}
}
