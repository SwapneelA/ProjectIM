/**
 * 
 */
package com.gasagency.dao.intf;

import java.util.List;

import com.gasagency.pojo.CylinderVolumeMaster;

/**
 * @author GRO
 *
 */
public interface ICylinderVolumeDAO {
	List<CylinderVolumeMaster> retrieveListOfCylinderVolumes();
}
