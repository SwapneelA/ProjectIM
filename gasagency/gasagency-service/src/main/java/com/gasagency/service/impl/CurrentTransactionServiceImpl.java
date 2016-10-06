package com.gasagency.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.ICurrentTransactionDAO;
import com.gasagency.pojo.CurrentTransaction;
import com.gasagency.pojo.TransactionViewModel;
import com.gasagency.service.intf.ICurrentTransactionService;

public class CurrentTransactionServiceImpl implements ICurrentTransactionService {

	@Autowired
	private ICurrentTransactionDAO currentTransactionDAO;
	@Override
	public void saveCurrentTransaction(CurrentTransaction currentTransaction) 
	{
		currentTransactionDAO.saveCurrentTransaction(currentTransaction);
		
	}
	
	@Override
	public List<TransactionViewModel> getCurrentTransactions(int transactionId){
		
		return currentTransactionDAO.getCurrentTransaction(transactionId);
	}

	@Override
	public Date getTransactionDate() {
		
		return currentTransactionDAO.getTransactionDate();
	}

	@Override
	public boolean saveCurrentTransactionDate(String date) {
		// TODO Auto-generated method stub
		return currentTransactionDAO.saveCurrentTransactionDate(date);
	}

}
