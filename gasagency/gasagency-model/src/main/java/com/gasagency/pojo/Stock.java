/**
 * 
 */
package com.gasagency.pojo;

import java.io.Serializable;

/**
 * @author GRO
 *
 */
public class Stock implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8285675126865875733L;
	public Stock(){
		
	}
	
	
	public Stock(int stockId, int openingStock, 
			int transactionId) {
	
		this.stockId = stockId;
		this.openingStock = openingStock;
		this.transactionId = transactionId;
	}

	public Stock(int stockId, int transactionId){

		this.stockId = stockId;
		this.transactionId = transactionId;
	}
	

	private int id;
	private int stockId;
	private int openingStock;
	private int closingStock;
	private int transactionId;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStockId() {
		return stockId;
	}
	public void setStockId(int stockId) {
		this.stockId = stockId;
	}
	public int getOpeningStock() {
		return openingStock;
	}
	public void setOpeningStock(int openingStock) {
		this.openingStock = openingStock;
	}
	public int getClosingStock() {
		return closingStock;
	}
	public void setClosingStock(int closingStock) {
		this.closingStock = closingStock;
	}
	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
}
