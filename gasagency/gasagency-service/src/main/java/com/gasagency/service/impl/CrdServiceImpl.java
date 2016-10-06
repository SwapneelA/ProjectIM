/**
 * 
 */
package com.gasagency.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.ICrdDAO;
import com.gasagency.pojo.CRDDetails;
import com.gasagency.service.intf.ICrdService;

/**
 * @author GRO
 *
 */
public class CrdServiceImpl implements ICrdService {

	@Autowired
	private ICrdDAO crdDaoImpl;
	/* (non-Javadoc)
	 * @see com.gasagency.service.intf.ICrdService#saveCrdDetails(com.gasagency.pojo.CRDDetails)
	 */
	@Override
	public void saveCrdDetails(CRDDetails crdDetails) {
		crdDaoImpl.saveCrdDetails(crdDetails);
	}

}
