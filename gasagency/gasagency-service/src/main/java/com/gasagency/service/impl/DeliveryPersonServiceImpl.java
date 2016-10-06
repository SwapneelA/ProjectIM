package com.gasagency.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.dao.intf.IDeliveryPersonDAO;
import com.gasagency.pojo.DeliveryPersonMaster;
import com.gasagency.service.intf.IDeliveryPersonService;

public class DeliveryPersonServiceImpl implements IDeliveryPersonService
{
	@Autowired
	private IDeliveryPersonDAO deliveryPersonDAO;
	
	@Override
	public void saveDeliveryPerson(DeliveryPersonMaster deliveryPersonMaster) 
	{
		deliveryPersonDAO.saveDeliveryPerson(deliveryPersonMaster);
		
	}
	@Override
	public List<DeliveryPersonMaster> getListOfDeliveryPersonMaster() {
		return deliveryPersonDAO.getListOfDeliveryPersonMaster();
		
	}
	
}
