/**
 * 
 */
package com.gasagency.pojo;

/**
 * @author GRO
 *
 */
public class StockDetailsViewModel {
	private String cylinderType;
	public String getCylinderType() {
		return cylinderType;
	}
	public void setCylinderType(String cylinderType) {
		this.cylinderType = cylinderType;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getCylinderVolume() {
		return cylinderVolume;
	}
	public void setCylinderVolume(String cylinderVolume) {
		this.cylinderVolume = cylinderVolume;
	}
	private int quantity;
	private String cylinderVolume;
	
	
}
