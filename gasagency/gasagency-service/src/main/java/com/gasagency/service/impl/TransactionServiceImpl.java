/**
 * 
 */
package com.gasagency.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.ITransactionDAO;
import com.gasagency.pojo.TransactionInfo;
import com.gasagency.service.intf.ITransactionService;

/**
 * @author GRO
 *
 */
public class TransactionServiceImpl implements ITransactionService {

	/* (non-Javadoc)
	 * @see com.gasagency.service.intf.ITransactionService#getOpenTransactionDate()
	 */
	private static SimpleDateFormat dateFormatyyyyMMdd = new SimpleDateFormat("yyyyMMdd");
	@Autowired
	private ITransactionDAO transactionDaoImpl;
	@Override
	public Integer getOpenTransaction() {
		// TODO Auto-generated method stub
		Integer transactionId =  transactionDaoImpl.getActiveTransactionDate();
		if(transactionId !=null)
			return transactionId;
		else
			return null;
		
	}
	@Override
	public Integer saveTransactionInfo(TransactionInfo transactionInfo){
		return transactionDaoImpl.saveTransactionInfo(transactionInfo);
	}
}
