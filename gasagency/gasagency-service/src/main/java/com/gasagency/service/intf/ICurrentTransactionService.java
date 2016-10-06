package com.gasagency.service.intf;

import java.util.List;

import com.gasagency.pojo.CurrentTransaction;
import com.gasagency.pojo.TransactionViewModel;

import java.util.Date;
public interface ICurrentTransactionService {
	void saveCurrentTransaction(CurrentTransaction currentTransaction);
	List<TransactionViewModel> getCurrentTransactions(int transactionId);
	Date getTransactionDate();
	boolean saveCurrentTransactionDate(String date);
}
