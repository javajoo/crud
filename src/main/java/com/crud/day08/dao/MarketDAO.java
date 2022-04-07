package com.crud.day08.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crud.day08.model.Market;

@Repository
public interface MarketDAO {
	
	public int insertMarket(Market market);
	
	public List<Market> selectMarketList();

	public Market selectMarketById(int id);
	
	public int updateMarketById(Market market);
	
	public void deleteMarketById(Market market);
}
