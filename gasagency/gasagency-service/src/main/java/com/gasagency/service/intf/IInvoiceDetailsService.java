package com.gasagency.service.intf;

import java.util.List;

import com.gasagency.pojo.InvoiceDetails;

public interface IInvoiceDetailsService {
	
	void saveInvoiceEntry(InvoiceDetails invoiceDetails);
	
	List<InvoiceDetails> getInvoiceDetails(String fromDate, String toDate);
}
