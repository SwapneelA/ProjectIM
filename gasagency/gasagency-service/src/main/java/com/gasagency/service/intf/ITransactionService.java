package com.gasagency.service.intf;

import com.gasagency.pojo.TransactionInfo;

public interface ITransactionService {
	Integer getOpenTransaction();

	Integer saveTransactionInfo(TransactionInfo transactionInfo);
}
