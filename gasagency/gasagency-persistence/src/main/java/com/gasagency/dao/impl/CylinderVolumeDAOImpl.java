/**
 * 
 */
package com.gasagency.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.ICylinderVolumeDAO;
import com.gasagency.pojo.CylinderVolumeMaster;

/**
 * @author GRO
 *
 */
public class CylinderVolumeDAOImpl implements ICylinderVolumeDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<CylinderVolumeMaster> retrieveListOfCylinderVolumes() 
	{
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from CylinderVolumeMaster");
		List<CylinderVolumeMaster> cylinderVolumes = query.list();
		session.close();
		return cylinderVolumes;
	}

}
