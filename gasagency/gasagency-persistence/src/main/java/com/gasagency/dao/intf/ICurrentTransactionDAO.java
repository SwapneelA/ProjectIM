package com.gasagency.dao.intf;

import java.util.List;
import java.util.Date;

import com.gasagency.pojo.CurrentTransaction;
import com.gasagency.pojo.TransactionViewModel;

public interface ICurrentTransactionDAO {
	void saveCurrentTransaction(CurrentTransaction currentTransaction);
	List<TransactionViewModel> getCurrentTransaction(int transactionId);
	Date getTransactionDate();
	boolean saveCurrentTransactionDate(String date);
}
