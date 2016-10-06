package com.gasagency.pojo;

public class TransactionViewModel {
	private String operationType;
	private String cylinderType;
	private String cylinderVolume;
	private int quantity;
	private String deliveryPerson;
	
	
	public TransactionViewModel(String operationType, String cylinderType,
			String cylinderVolume, int quantity, String deliveryPerson) {
		super();
		this.operationType = operationType;
		this.cylinderType = cylinderType;
		this.cylinderVolume = cylinderVolume;
		this.quantity = quantity;
		this.deliveryPerson = deliveryPerson;
	}
	public String getOperationType() {
		return operationType;
	}
	public void setOperationType(String operationType) {
		this.operationType = operationType;
	}
	public String getCylinderType() {
		return cylinderType;
	}
	public void setCylinderType(String cylinderType) {
		this.cylinderType = cylinderType;
	}
	public String getCylinderVolume() {
		return cylinderVolume;
	}
	public void setCylinderVolume(String cylinderVolume) {
		this.cylinderVolume = cylinderVolume;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getDeliveryPerson() {
		return deliveryPerson;
	}
	public void setDeliveryPerson(String deliveryPerson) {
		this.deliveryPerson = deliveryPerson;
	}
	
	
}
