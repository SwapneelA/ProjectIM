package com.gasagency.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.IInvoiceDetailsDAO;
import com.gasagency.pojo.InvoiceDetails;
import com.gasagency.service.intf.IInvoiceDetailsService;

public class InvoiceDetailsService implements IInvoiceDetailsService {

	@Autowired
	private IInvoiceDetailsDAO invoiceDetailsDAO;
	


	@Override
	public void saveInvoiceEntry(InvoiceDetails invoiceDetails) 
	{
		invoiceDetailsDAO.saveInvoiceDetails(invoiceDetails);
	}
	
	public List<InvoiceDetails> getInvoiceDetails(String fromDate, String toDate)
	{
		return invoiceDetailsDAO.getInvoiceDetails(fromDate, toDate);
	}
}
