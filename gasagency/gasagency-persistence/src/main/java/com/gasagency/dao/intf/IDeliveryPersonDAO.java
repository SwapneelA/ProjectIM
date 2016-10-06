package com.gasagency.dao.intf;

import java.util.List;

import com.gasagency.pojo.DeliveryPersonMaster;

public interface IDeliveryPersonDAO 
{
	void saveDeliveryPerson(DeliveryPersonMaster deliveryPersonMaster);
	List<DeliveryPersonMaster> getListOfDeliveryPersonMaster();
}	
