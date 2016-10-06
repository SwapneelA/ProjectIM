package com.gasagency.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;




import com.gasagency.dao.intf.IStockDetailsDAO;
import com.gasagency.pojo.CurrentTransaction;
import com.gasagency.pojo.Stock;
import com.gasagency.pojo.StockDetails;
import com.gasagency.pojo.StockDetailsViewModel;
import com.gasagency.service.intf.IStockDetailsService;

public class StockDetailsServiceImpl implements IStockDetailsService
{
	private static Logger logger =  Logger.getLogger(StockDetailsServiceImpl.class); 
	private IStockDetailsDAO stockDetailsDAO; 
	
	@Autowired
	public void setStockDetailsDAO(IStockDetailsDAO stockDetailsDAO)
	{
		this.stockDetailsDAO = stockDetailsDAO;
	}
	@Override
	public List<StockDetails> getStockDetails()
	{
		List<StockDetails> list = null;
		try 
		{
			list=stockDetailsDAO.getStockDetails();
		}
		catch (Exception e) 
		{
			logger.error("Exception occured in getStockDetails method"+e);
		}
		return list;
	}
	@Override
	public void saveStockDetails(Map<Integer,Integer> stockIdToQuantityMap) 
	{
		try 
		{
			stockDetailsDAO.saveStockDetails(stockIdToQuantityMap);
		}
		catch (Exception e)
		{
			logger.error("Exception occured in saveStockDetails"+ e);
		}
	}
	
	
	@Override
	public void updateStockDetails(CurrentTransaction currentTransaction){
		try 
		{
			stockDetailsDAO.updateStockDetails(currentTransaction);
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
	}
	@Override
	public Map<String, List<StockDetailsViewModel>> getStocks() {
		
		List<StockDetailsViewModel> listOfFullStock = new ArrayList<StockDetailsViewModel>();
		List<StockDetailsViewModel> listOfEmptyStock = new ArrayList<StockDetailsViewModel>();
		List<StockDetailsViewModel> listOfDefectiveStock = new ArrayList<StockDetailsViewModel>();
		List<StockDetailsViewModel> list = stockDetailsDAO.getStocks();
		Map<String,List<StockDetailsViewModel>> mapOfData = new HashMap<String,List<StockDetailsViewModel>>();
		for(StockDetailsViewModel model : list){
			if(model.getCylinderVolume().equalsIgnoreCase("FULL")){
				listOfFullStock.add(model);
			}
			else if(model.getCylinderVolume().equalsIgnoreCase("EMPTY")){
				listOfEmptyStock.add(model);
			}
			else{
				listOfDefectiveStock.add(model);
			}
		}
		
		mapOfData.put("FULL",listOfFullStock);
		mapOfData.put("EMPTY", listOfEmptyStock);
		mapOfData.put("DEFECTIVE", listOfDefectiveStock);
		return mapOfData;
	}
	
	@Override
	public Integer getQuantity(Integer volumeId, Integer cylinderTypeId){
		return stockDetailsDAO.getQuantity(volumeId, cylinderTypeId);
	}
	@Override
	public void saveOrUpdateStocks(List<Stock> stocks){
		stockDetailsDAO.saveOrUpdateStock(stocks);	
	}
	
	@Override
	public List<Stock> getStockByTransactionDate(String transactionDate){
		return stockDetailsDAO.getStocksByTransactionDate(transactionDate);
	}
	
	
}
