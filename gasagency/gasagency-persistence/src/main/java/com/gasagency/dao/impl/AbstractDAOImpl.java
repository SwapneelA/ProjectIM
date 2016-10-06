package com.gasagency.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;


abstract public class AbstractDAOImpl extends HibernateDaoSupport  
{
	
	public Object saveObject(Object object)
	{
		currentSession().saveOrUpdate(object);
		return  object;
	}
	public List<? extends Object> getAllObjectList(Class clazz)
	{
		Session session = currentSession();
		Query query = session.createQuery("FROM "+clazz.getName());
		return query.list();
	}
}
