package com.gasagency.service.intf;

import java.util.List;
import java.util.Map;

import com.gasagency.pojo.CurrentTransaction;
import com.gasagency.pojo.Stock;
import com.gasagency.pojo.StockDetails;
import com.gasagency.pojo.StockDetailsViewModel;

public interface IStockDetailsService {
	List<StockDetails> getStockDetails();
	void saveStockDetails(Map<Integer, Integer> stockIdToQuantityMap);
	public void updateStockDetails(CurrentTransaction currentTransaction);
	Map<String, List<StockDetailsViewModel>> getStocks();
	Integer getQuantity(Integer volumeId, Integer cylinderTypeId);
	void saveOrUpdateStocks(List<Stock> stocks);
	List<Stock> getStockByTransactionDate(String transactionDate);
}
