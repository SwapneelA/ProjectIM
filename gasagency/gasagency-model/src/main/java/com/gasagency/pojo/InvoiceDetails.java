package com.gasagency.pojo;

public class InvoiceDetails {
	private int id;
	private String invoiceNumber;
	private float invoiceValue;
	private String truckNumber;
	private String invoiceDate;
	private String receivedDate;
	private int qtyCommodity;
	private int qtySubDomestic;
	private int qtyNonSubDomestic;
	private int qtyNonDomesticSmall;
	private int qtyNonDomesticLarge;
	private int invoiceType;
	private String createDate;
	private String updateDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	
	public String getInvoiceNumber() {
		return invoiceNumber;
	}
	public void setInvoiceNumber(String invoiceNumber) {
		this.invoiceNumber = invoiceNumber;
	}
	public float getInvoiceValue() {
		return invoiceValue;
	}
	public void setInvoiceValue(float invoiceValue) {
		this.invoiceValue = invoiceValue;
	}
	
	public String getTruckNumber() {
		return truckNumber;
	}
	public void setTruckNumber(String truckNumber) {
		this.truckNumber = truckNumber;
	}
	public String getInvoiceDate() {
		return invoiceDate;
	}
	public void setInvoiceDate(String invoiceDate) {
		this.invoiceDate = invoiceDate;
	}
	public String getReceivedDate() {
		return receivedDate;
	}
	public void setReceivedDate(String receivedDate) {
		this.receivedDate = receivedDate;
	}
	public int getQtyCommodity() {
		return qtyCommodity;
	}
	public void setQtyCommodity(int qtyCommodity) {
		this.qtyCommodity = qtyCommodity;
	}
	public int getQtySubDomestic() {
		return qtySubDomestic;
	}
	public void setQtySubDomestic(int qtySubDomestic) {
		this.qtySubDomestic = qtySubDomestic;
	}
	public int getQtyNonSubDomestic() {
		return qtyNonSubDomestic;
	}
	public void setQtyNonSubDomestic(int qtyNonSubDomestic) {
		this.qtyNonSubDomestic = qtyNonSubDomestic;
	}
	public int getQtyNonDomesticSmall() {
		return qtyNonDomesticSmall;
	}
	public void setQtyNonDomesticSmall(int qtyNonDomesticSmall) {
		this.qtyNonDomesticSmall = qtyNonDomesticSmall;
	}
	public int getQtyNonDomesticLarge() {
		return qtyNonDomesticLarge;
	}
	public void setQtyNonDomesticLarge(int qtyNonDomesticLarge) {
		this.qtyNonDomesticLarge = qtyNonDomesticLarge;
	}
	
	
	public int getInvoiceType() {
		return invoiceType;
	}
	public void setInvoiceType(int invoiceType) {
		this.invoiceType = invoiceType;
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
