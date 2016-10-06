/**
 * 
 */
package com.gasagency.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.ICylinderVolumeDAO;
import com.gasagency.pojo.CylinderVolumeMaster;
import com.gasagency.service.intf.ICylinderVolumeService;

/**
 * @author GRO
 *
 */
public class CylinderVolumeServiceImpl implements ICylinderVolumeService{

	@Autowired
	private ICylinderVolumeDAO cylinderVolumeDAO;
	@Override
	public List<CylinderVolumeMaster> retrieveListOfCylinderVolumes() {
		// TODO Auto-generated method stub
		return cylinderVolumeDAO.retrieveListOfCylinderVolumes();
	}

}
