package com.gasagency.pojo;

public class OperationMaster 
{
	private int operationTypeId;
	private String operationType;
	private String CreateDate;
	public int getOperationTypeId() {
		return operationTypeId;
	}
	public void setOperationTypeId(int operationTypeId) {
		this.operationTypeId = operationTypeId;
	}
	public String getOperationType() {
		return operationType;
	}
	public void setOperationType(String operationType) {
		this.operationType = operationType;
	}
	public String getCreateDate() {
		return CreateDate;
	}
	public void setCreateDate(String createDate) {
		CreateDate = createDate;
	}
}
