/**
 * 
 */
package com.gasagency.dao.intf;

import java.util.Date;

import com.gasagency.pojo.TransactionInfo;

/**
 * @author GRO
 *
 */
public interface ITransactionDAO {
	Integer getActiveTransactionDate();

	Integer saveTransactionInfo(TransactionInfo transactionInfo);
}
