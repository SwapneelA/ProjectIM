package com.gasagency.dao.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;


import java.util.logging.Logger;

import org.apache.commons.logging.Log;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.IStockDetailsDAO;
import com.gasagency.pojo.CurrentTransaction;
import com.gasagency.pojo.Stock;
import com.gasagency.pojo.StockDetails;
import com.gasagency.pojo.StockDetailsViewModel;


public class StockDetailsDAOImpl implements IStockDetailsDAO 
{
	private  SimpleDateFormat formatteryyyyMMddhhmmss = new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
	private static Logger logger =  Logger.getLogger("StockDetailsDAOImpl"); 
	
	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	public List<StockDetails> getStockDetails() 
	{
		Session session = sessionFactory.openSession();
		Query query  = session.createQuery("from StockDetails"); 
		List<StockDetails> list = query.list();
		return list;
	}
	@Override
	public void updateStockDetails(CurrentTransaction currentTransaction){
		
		Session session = sessionFactory.openSession();
		Criteria criteria = session.createCriteria(StockDetails.class);
		criteria.add(Restrictions.eq("cylinderTypeId", currentTransaction.getCylinderTypeId()));
		criteria.add(Restrictions.eq("volumeId", currentTransaction.getcategoryId()));
		List<StockDetails> list = (List<StockDetails>)criteria.list();
		StockDetails stock  = list.get(0);
		if(currentTransaction.getOperationTypeId() == 1){
			//add
			stock.setQuantity(stock.getQuantity() + currentTransaction.getQuantity());
		}
		else{
			stock.setQuantity(stock.getQuantity() - currentTransaction.getQuantity());
		}
		
		session.merge(stock);
		session.flush();
		session.clear();
		session.close();
	}
	@Override
	public void saveStockDetails(Map<Integer, Integer> stockIdToQuantityMap) {
		Session session = sessionFactory.openSession();
		for(Map.Entry<Integer, Integer> entry : stockIdToQuantityMap.entrySet()){
			try 
			{
				int key = entry.getKey();
				StockDetails stockDetails =(StockDetails) session.get(StockDetails.class, key);
				int quantity = entry.getValue();
				if(null != stockDetails && Math.abs(quantity) > 0){
					stockDetails.setQuantity(stockDetails.getQuantity() + quantity);
					stockDetails.setUpdateDate(formatteryyyyMMddhhmmss.format(Calendar.getInstance().getTime()));
					session.update(stockDetails);
				}
			}
			catch (Exception e) 
			{
				System.out.println(e);
			}
		}
		session.flush();
		session.close();
	}
	@Override
	public List<StockDetailsViewModel> getStocks() {
		Session session = sessionFactory.openSession();
		String queryString = "select ctm.CylinderType ,  ccam.VolumeName ,sd.Quantity"
				+ " from  stockdetails sd join cylindertypemaster ctm on"
				+ " sd.cylinderTypeId = ctm.cylinderTypeId join cylindervolumemaster ccam"
				+ " on sd.VolumeId = ccam.VolumeId"
				+ " order by sd.VolumeId asc, sd.CylinderTypeId";
		SQLQuery query = session.createSQLQuery(queryString);
		List<Object []> listOfObjects = query.list();
		List<StockDetailsViewModel> listOfStocksViewmodel = new ArrayList<StockDetailsViewModel>();
		for(Object [] object : listOfObjects){
			StockDetailsViewModel model = new StockDetailsViewModel();
			model.setCylinderType((String)object[0]);
			model.setCylinderVolume((String)object[1]);
			model.setQuantity((Integer)object[2]);
			listOfStocksViewmodel.add(model);
		}
		session.close();
		return listOfStocksViewmodel;
	}
	@Override
	public Integer getQuantity(int volumeId, int cylinderTypeId){
		Session session = sessionFactory.openSession();
		String queryString = "select quantity from stockdetails where volumeId="+volumeId+" and cylinderTypeId="+cylinderTypeId;
		SQLQuery query = session.createSQLQuery(queryString);
		Integer quantity = (Integer) query.list().get(0);
		session.close();
		return quantity;
		
	}
	@Override
	public void saveOrUpdateStock(List<Stock> stocks){
		Session session = sessionFactory.openSession();
		for(Stock stock:stocks){
			session.saveOrUpdate(stock);
		}
		session.flush();
		session.close();
	}
	@Override
	public List<Stock> getStocksByTransactionDate(String transactionDate){
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Stock where transactionDate='"+transactionDate+"'");
		List<Stock> stocks = query.list();
		return stocks;
	}
}
