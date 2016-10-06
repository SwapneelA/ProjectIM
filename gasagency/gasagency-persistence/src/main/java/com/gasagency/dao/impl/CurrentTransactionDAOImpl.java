package com.gasagency.dao.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;














import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.ICurrentTransactionDAO;
import com.gasagency.pojo.CurrentTransaction;
import com.gasagency.pojo.TransactionViewModel;

public class CurrentTransactionDAOImpl implements ICurrentTransactionDAO 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveCurrentTransaction(CurrentTransaction currentTransaction) {
		Session session = sessionFactory.openSession();
		session.save(currentTransaction);
		session.flush();
		session.close();
	}
	
	@Override
	public List<TransactionViewModel> getCurrentTransaction(int transactionId){
		
		String queryString = "select ctm.CylinderType, ccm.VolumeName, "
				+ "om.OperationType, ct.Quantity, dpm.deliveryPersonFirstName"
				+ " from cylinderTransaction ct join cylindertypemaster ctm"
				+ "  on ct.CylinderTypeId = ctm.CylinderTypeId "
				+ " join cylindervolumemaster ccm"
				+ "  on ct.volumeId = ccm.volumeId "
				+ " join operationmaster om"
				+ " on ct.operationTypeId = om.operationTypeId"
				+ " join deliverypersonmaster dpm"
				+ " on ct.deliveryPersonId = dpm.deliveryPersonId where transactionId='"+transactionId+"'";
		Session session = sessionFactory.openSession();
		Query query  = session.createSQLQuery(queryString);
		List<Object []> obj = query.list();
		List<TransactionViewModel> list = new ArrayList<TransactionViewModel>();
		for(Object[] temp : obj)
		{
			
			String cylinderType = (String)temp[0];
			String cylinderCategory = (String)temp[1];
			String operationType = (String) temp[2];
			int quantity =  (Integer)temp[3];
			String firstName = (String)temp[4];
			TransactionViewModel tr = new TransactionViewModel(cylinderType,cylinderCategory,operationType,quantity,firstName);
			list.add(tr);
		}
		session.clear();
		session.close();
		return list;
		
	}

	@Override
	public Date getTransactionDate() {
		Date currentTransactionDate = null;
		String queryString ="SELECT currenttransactiondate FROM transactiondate";
		Session session = sessionFactory.openSession();
		Query query = session.createSQLQuery(queryString);
		List<Date> result = query.list();
		Date date = result.get(0);
		if(date!=null)
			currentTransactionDate = date;
		session.clear();
		session.close();
		return currentTransactionDate;
	}

	@Override
	public boolean saveCurrentTransactionDate(String date) 
	{
		
		boolean flag = false;
		String queryString ="UPDATE transactioninfo set tranactiondate='"+date+"', opentransaction=true";
		Session session = sessionFactory.openSession();
		Query query = session.createSQLQuery(queryString);
		int updatedRows = query.executeUpdate();
		if(updatedRows > 0)
			flag =true;
		session.clear();
		session.close();
		return flag;
	}
	
	

}
