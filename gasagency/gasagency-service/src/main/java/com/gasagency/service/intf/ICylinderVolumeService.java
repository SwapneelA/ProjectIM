/**
 * 
 */
package com.gasagency.service.intf;

import java.util.List;

import com.gasagency.pojo.CylinderVolumeMaster;

/**
 * @author GRO
 *
 */
public interface ICylinderVolumeService {
	List<CylinderVolumeMaster> retrieveListOfCylinderVolumes();
}
