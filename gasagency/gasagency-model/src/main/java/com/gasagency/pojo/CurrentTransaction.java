package com.gasagency.pojo;

public class CurrentTransaction {
	private int id;
	private int cylinderTypeId;
	private int categoryId;
	private int operationTypeId;
	private int deliveryPersonId;
	private int quantity;
	private String comments;
	private String createDate;
	private String updateDate;
	private int isDelete;
	private int transactionId;
	
	public CurrentTransaction(int cylinderTypeId, int categoryId,
			int operationTypeId, int deliveryId, int quantity, String comments,
			String createDate, int transactionId) {
		super();
		this.cylinderTypeId = cylinderTypeId;
		this.categoryId = categoryId;
		this.operationTypeId = operationTypeId;
		this.deliveryPersonId = deliveryId;
		this.quantity = quantity;
		this.comments = comments;
		this.createDate = createDate;
		this.transactionId = transactionId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCylinderTypeId() {
		return cylinderTypeId;
	}
	public void setCylinderTypeId(int cylinderTypeId) {
		this.cylinderTypeId = cylinderTypeId;
	}
	public int getcategoryId() {
		return categoryId;
	}
	public void setcategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getOperationTypeId() {
		return operationTypeId;
	}
	public void setOperationTypeId(int operationTypeId) {
		this.operationTypeId = operationTypeId;
	}
	public int getDeliveryPersonId() {
		return deliveryPersonId;
	}
	public void setDeliveryPersonId(int deliveryId) {
		this.deliveryPersonId = deliveryId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	
}
