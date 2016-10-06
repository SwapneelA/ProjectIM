/**
 * 
 */
package com.gasagency.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.impl.CylinderTypeDAOImpl;
import com.gasagency.dao.intf.ICylinderTypeDAO;
import com.gasagency.pojo.CylinderTypeMaster;
import com.gasagency.service.intf.ICylinderTypeService;

/**
 * @author GRO
 *
 */
public class CylinderTypeServiceImpl implements ICylinderTypeService {

	@Autowired
	private ICylinderTypeDAO cylinderTypeDAO;
	/* (non-Javadoc)
	 * @see com.gasagency.service.intf.ICylinderTypeService#retrieveListOfCylinderType()
	 */
	@Override
	public List<CylinderTypeMaster> retrieveListOfCylinderType() {
		// TODO Auto-generated method stub
		return cylinderTypeDAO.retrieveListOfCylinderType();
		
	}

}
