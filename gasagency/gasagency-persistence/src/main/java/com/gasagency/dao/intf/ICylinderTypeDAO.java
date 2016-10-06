/**
 * 
 */
package com.gasagency.dao.intf;

import java.util.List;

import com.gasagency.pojo.CylinderTypeMaster;

/**
 * @author GRO
 *
 */
public interface ICylinderTypeDAO {
	List<CylinderTypeMaster> retrieveListOfCylinderType();
}
