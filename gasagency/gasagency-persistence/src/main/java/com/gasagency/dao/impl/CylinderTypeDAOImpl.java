/**
 * 
 */
package com.gasagency.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.ICylinderTypeDAO;
import com.gasagency.pojo.CylinderTypeMaster;

/**
 * @author GRO
 *
 */
public class CylinderTypeDAOImpl implements ICylinderTypeDAO {

	@Autowired
	private SessionFactory sessionFactory;
	/* (non-Javadoc)
	 * @see com.gasagency.dao.intf.ICylinderTypeDAO#retrieveListOfCylinderType()
	 */
	@Override
	public List<CylinderTypeMaster> retrieveListOfCylinderType() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from CylinderTypeMaster");
		List<CylinderTypeMaster> cylinderTypes = query.list();
		session.close();
		return cylinderTypes;
	}

}
