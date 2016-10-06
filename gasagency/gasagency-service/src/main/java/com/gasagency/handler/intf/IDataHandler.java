/**
 * 
 */
package com.gasagency.handler.intf;

import java.util.List;
import java.util.Map;

import com.gasagency.pojo.CRDDetails;
import com.gasagency.pojo.CurrentTransaction;
import com.gasagency.pojo.CylinderTypeMaster;
import com.gasagency.pojo.CylinderVolumeMaster;
import com.gasagency.pojo.DeliveryPersonMaster;
import com.gasagency.pojo.InvoiceDetails;
import com.gasagency.pojo.StockDetails;
import com.gasagency.pojo.StockDetailsViewModel;
import com.gasagency.pojo.TransactionInfo;
import com.gasagency.pojo.TransactionViewModel;

import java.util.Date;
/**
 * @author SApte1
 *
 */
public interface IDataHandler 
{
	List<StockDetails> getStockDetails();
	boolean saveInvoiceEntry(InvoiceDetails invoiceDetails);
	void saveDeliveryPerson(DeliveryPersonMaster deliveryPersonMaster);
	void saveCurrentTransaction(CurrentTransaction currentTransaction);
	List<DeliveryPersonMaster> getListOfDeliveryPerson();
	List<InvoiceDetails> getInvoiceDetails(String fromDate, String toDate);
	List<TransactionViewModel> getListOfCurrentTransaction(int transactionId);
	StockDetails updateStockDetails(int cylinderTypeId, int categoryId, int quantity);
	public Map<String, List<StockDetailsViewModel>> getStocks();
	Date getTransactionDate();
	boolean saveCurrentTransactionDate(String date);
	boolean saveCRDDetails(CRDDetails crdDetails);
	Integer getQuantity(Integer volumeId, Integer cylinderTypeId);
	Integer getOpenTransaction();
	Integer saveTransactionInfo(TransactionInfo transactionInfo);
	List<CylinderVolumeMaster> retrieveListOfCylinderVolume();
	List<CylinderTypeMaster> retrieveListOfCylinderType();
	void saveOrUpdateStocks(List<StockDetails> stockDetails, int tranasctionId, boolean isOpeningTransactionForTheDay);
}

