/**
 * 
 */
package com.gasagency.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.ICrdDAO;
import com.gasagency.pojo.CRDDetails;

/**
 * @author GRO
 *
 */
public class CrdDAOImpl implements ICrdDAO {

	@Autowired
	private SessionFactory sessionFactory;
	/* (non-Javadoc)
	 * @see com.gasagency.dao.intf.ICrdDAO#saveCrdDetails(com.gasagency.pojo.CRDDetails)
	 */
	@Override
	public void saveCrdDetails(CRDDetails crdDetails) {
		Session session = sessionFactory.openSession();
		session.save(crdDetails);
		session.flush();
		session.close();

	}

}
