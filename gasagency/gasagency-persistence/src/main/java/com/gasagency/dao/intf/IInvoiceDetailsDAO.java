package com.gasagency.dao.intf;

import java.util.List;

import com.gasagency.pojo.InvoiceDetails;

public interface IInvoiceDetailsDAO 
{
	void saveInvoiceDetails(InvoiceDetails invoiceDetails);
	List<InvoiceDetails> getInvoiceDetails(String fromDate, String toDate);
}
