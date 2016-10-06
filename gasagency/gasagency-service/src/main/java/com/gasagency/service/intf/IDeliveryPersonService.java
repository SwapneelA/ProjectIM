package com.gasagency.service.intf;

import java.util.List;

import com.gasagency.pojo.DeliveryPersonMaster;

public interface IDeliveryPersonService {
	void saveDeliveryPerson(DeliveryPersonMaster deliveryPersonMaster);
	List<DeliveryPersonMaster> getListOfDeliveryPersonMaster();
}
