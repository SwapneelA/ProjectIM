package com.gasagency.dao.impl;

import java.util.List;



import org.hibernate.HibernateError;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;


import com.gasagency.dao.intf.IAccountDAO;

public class AccountDAOImpl implements IAccountDAO {

	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public boolean validateUser(String username, String password) 
	{
		
		boolean flag= false;
		String sqlString = "from Account where username='"+username+"' and password='"+password+"'";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(sqlString);
		List list = query.list();
		if(list.size() > 0)
			flag = true;
		session.clear();
		session.close();
		return flag;
	}
	

}
