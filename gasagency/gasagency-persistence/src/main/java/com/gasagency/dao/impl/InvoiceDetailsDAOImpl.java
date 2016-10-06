package com.gasagency.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.IInvoiceDetailsDAO;
import com.gasagency.pojo.InvoiceDetails;

public class InvoiceDetailsDAOImpl implements IInvoiceDetailsDAO {

	private SessionFactory sessionFactory;

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void saveInvoiceDetails(InvoiceDetails invoiceDetails) 
	{
		Session session = sessionFactory.openSession();
		session.save(invoiceDetails);
		session.flush();
		session.close();
	}
	@Override
	public List<InvoiceDetails> getInvoiceDetails(String fromDate, String toDate) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Criteria criteria = session.createCriteria(InvoiceDetails.class);
		criteria.add(Restrictions.between("invoiceDate", fromDate, toDate));
		List<InvoiceDetails> list = (List<InvoiceDetails>)criteria.list();
		session.clear();
		session.close();
		return list;
	}
	
	

}
