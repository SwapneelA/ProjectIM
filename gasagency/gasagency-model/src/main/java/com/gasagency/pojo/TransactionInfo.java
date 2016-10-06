/**
 * 
 */
package com.gasagency.pojo;

/**
 * @author GRO
 *
 */
public class TransactionInfo {
	private int id;
	private String transactionDate;
	private boolean openTransaction;
	private String updateDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(String transactionDate) {
		this.transactionDate = transactionDate;
	}
	public boolean isOpenTransaction() {
		return openTransaction;
	}
	public void setOpenTransaction(boolean openTransaction) {
		this.openTransaction = openTransaction;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	
	
}
