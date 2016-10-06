package com.gasagency.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.IDeliveryPersonDAO;
import com.gasagency.pojo.DeliveryPersonMaster;

public class DeliveryPersonDAOImpl  implements IDeliveryPersonDAO 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void saveDeliveryPerson(DeliveryPersonMaster deliveryPersonMaster) 
	{		
		Session session = sessionFactory.openSession();
		session.save(deliveryPersonMaster);
		session.flush();
		session.close();
	}

	@Override
	public List<DeliveryPersonMaster> getListOfDeliveryPersonMaster() {
		Session session  = sessionFactory.openSession();
		Query query = session.createQuery("FROM "+DeliveryPersonMaster.class.getName());
		List<DeliveryPersonMaster> list = query.list();
		session.close();
		return list;
	}

}
