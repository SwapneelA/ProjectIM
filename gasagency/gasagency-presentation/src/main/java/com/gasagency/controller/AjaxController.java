/**
 * 
 */
package com.gasagency.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gasagency.handler.intf.IDataHandler;
import com.gasagency.pojo.SearchCriteria;

/**
 * @author GRO
 *
 */

@RestController
public class AjaxController {
	
	@Autowired
	private IDataHandler dataHandler;
	
	@RequestMapping(value="/getAvailableQuantity.json", method=RequestMethod.POST, produces = "application/json", consumes="application/json", headers = "content-type=application/json")
	public String getAvailableQuantity(@RequestBody SearchCriteria search ){
		int volumeId = search.getCylinderCategoryId();
		int cylinderTypeId =  search.getCylinderTypeId();
		int quantity = dataHandler.getQuantity(volumeId, cylinderTypeId);
		//AjaxResponseBody response = new AjaxResponseBody();
		return String.valueOf(quantity);
	}
}
