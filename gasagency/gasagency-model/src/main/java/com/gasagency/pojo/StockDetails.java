package com.gasagency.pojo;

public class StockDetails {
	private int id;
	private int cylinderTypeId;
	private int volumeId;
	private int quantity;
	private String createDate;
	private String updateDate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public int getCylinderTypeId() {
		return cylinderTypeId;
	}
	public void setCylinderTypeId(int cylinderTypeId) {
		this.cylinderTypeId = cylinderTypeId;
	}
	public int getVolumeId() {
		return volumeId;
	}
	public void setVolumeId(int volumeId) {
		this.volumeId = volumeId;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
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
}
