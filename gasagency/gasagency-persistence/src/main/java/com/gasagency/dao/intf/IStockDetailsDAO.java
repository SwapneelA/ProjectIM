package com.gasagency.dao.intf;

import java.util.List;
import java.util.Map;

import com.gasagency.pojo.CurrentTransaction;
import com.gasagency.pojo.Stock;
import com.gasagency.pojo.StockDetails;
import com.gasagency.pojo.StockDetailsViewModel;

public interface IStockDetailsDAO {
	List<StockDetails> getStockDetails();
	
	void saveStockDetails(Map<Integer, Integer> stockIdToQuantityMap);
	
	public void updateStockDetails(CurrentTransaction currentTransaction);
	
	public List<StockDetailsViewModel> getStocks();

	Integer getQuantity(int volumeId, int cylinderTypeId);

	void saveOrUpdateStock(List<Stock> stocks);

	List<Stock> getStocksByTransactionDate(String transactionDate);
}
