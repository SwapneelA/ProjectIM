/**
 * 
 */
package com.gasagency.dao.impl;
import java.util.Date;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.ITransactionDAO;
import com.gasagency.pojo.TransactionInfo;

/**
 * @author GRO
 *
 */
public class TransactionDAOImpl implements ITransactionDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Integer getActiveTransactionDate() {
		Integer transactionId = null;
		Session session = sessionFactory.openSession();
		String queryString = "Select id from transactioninfo where opentransaction=true";
		SQLQuery query = session.createSQLQuery(queryString);
		List list = query.list();
		if(list!=null && list.size()> 0){
			transactionId = (Integer) list.get(0);
		}
		session.close();
		return transactionId;
	}
	
	@Override
	public Integer saveTransactionInfo(TransactionInfo transactionInfo){
		Session session = sessionFactory.openSession();
		Integer object = (Integer) session.save(transactionInfo);
		session.flush();
		session.close();
		return object;
	}
	
}
