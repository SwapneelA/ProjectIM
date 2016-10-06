package com.gasagency.handler.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.gasagency.handler.intf.IDataHandler;
import com.gasagency.pojo.CRDDetails;
import com.gasagency.pojo.CurrentTransaction;
import com.gasagency.pojo.CylinderTypeMaster;
import com.gasagency.pojo.CylinderVolumeMaster;
import com.gasagency.pojo.DeliveryPersonMaster;
import com.gasagency.pojo.InvoiceDetails;
import com.gasagency.pojo.Stock;
import com.gasagency.pojo.StockDetails;
import com.gasagency.pojo.StockDetailsViewModel;
import com.gasagency.pojo.TransactionInfo;
import com.gasagency.pojo.TransactionViewModel;
import com.gasagency.service.intf.ICrdService;
import com.gasagency.service.intf.ICurrentTransactionService;
import com.gasagency.service.intf.ICylinderTypeService;
import com.gasagency.service.intf.ICylinderVolumeService;
import com.gasagency.service.intf.IDeliveryPersonService;
import com.gasagency.service.intf.IInvoiceDetailsService;
import com.gasagency.service.intf.IStockDetailsService;
import com.gasagency.service.intf.ITransactionService;

public class DataHandler implements IDataHandler {

	private static final Logger logger = Logger.getLogger(DataHandler.class);
	@Autowired
	private IStockDetailsService stockDetailsService;
	private IInvoiceDetailsService invoiceDetailsService;
	@Autowired
	private IDeliveryPersonService deliveryPersonService;

	@Autowired
	private ICurrentTransactionService currentTransactionService;

	@Autowired
	public void setInvoiceDetailsService(
			IInvoiceDetailsService invoiceDetailsService) {
		this.invoiceDetailsService = invoiceDetailsService;
	}
	
	@Autowired
	private ICrdService crdServiceImpl;
	
	@Autowired
	private ITransactionService transactionService;
	
	@Autowired
	private ICylinderVolumeService cylinderVolumeService;
	@Autowired
	private ICylinderTypeService cylinderTypeService;
	@Override
	public List<StockDetails> getStockDetails() {
		return stockDetailsService.getStockDetails();
	}

	@Override
	public boolean saveInvoiceEntry(InvoiceDetails invoiceDetails) {
		boolean response = true;
		Map<Integer, Integer> stockIdToQuantityMap = new HashMap<Integer, Integer>();
		try {
			int quantityOfSD = invoiceDetails.getQtySubDomestic();
			int quantityOfNSD = invoiceDetails.getQtyNonSubDomestic();
			int quantityOfNDS = invoiceDetails.getQtyNonDomesticSmall();
			int quantityOfNDL = invoiceDetails.getQtyNonDomesticLarge();

			if (quantityOfSD > 0 || quantityOfNDS > 0 || quantityOfNSD > 0
					|| quantityOfNDL > 0) {

				stockIdToQuantityMap.put(1, quantityOfSD);
				stockIdToQuantityMap.put(2, quantityOfNSD);
				stockIdToQuantityMap.put(3, quantityOfNDS);
				stockIdToQuantityMap.put(4, quantityOfNDL);
				invoiceDetailsService.saveInvoiceEntry(invoiceDetails);
				stockDetailsService.saveStockDetails(stockIdToQuantityMap);
			} else {
				response = false;
				logger.info("Quantity not mentioned");
			}
		} catch (Exception e) {
			response = false;
			logger.error("Error while saving invoice data" + e);
		}
		return response;
	}
	
	@Override
	public boolean saveCRDDetails(CRDDetails crdDetails) {
		boolean result = true;
		Map<Integer, Integer> stockIdToQuantityMap = new HashMap<Integer, Integer>();
		try
		{
			int qntyOfDmsticEmpty = crdDetails.getQtyDomesticEmpty();
			int qntyOfNonDmsticSmlEmtpy = crdDetails
					.getQtyNonDomesticSmallEmpty();
			int qntyOfNonDmsticLrgEmpty = crdDetails
					.getQtyNonDomesticLargeEmpty();
			int qntyOfDmsticSbsdDfctve = crdDetails
					.getQtyDomesticSubsidisedDefective();
			int qntyOfDmsticNonSbsdDfctve = crdDetails
					.getQtyDomesticNonSubsidisedDefective();
			int qntyOfNonDmsticSmlDfctve = crdDetails
					.getQtyNonDomesticSmallDefective();
			int qntyOfNonDmsticLrgDfctve = crdDetails
					.getQtyNonDomesticLargeDefective();

			if (qntyOfDmsticEmpty > 0 || qntyOfNonDmsticSmlEmtpy > 0 || qntyOfNonDmsticLrgEmpty > 0
					|| qntyOfDmsticSbsdDfctve > 0	|| qntyOfDmsticNonSbsdDfctve > 0
					|| qntyOfNonDmsticSmlDfctve > 0	|| qntyOfNonDmsticLrgDfctve > 0) 
			{
				stockIdToQuantityMap.put(5, -qntyOfDmsticEmpty);
				stockIdToQuantityMap.put(6, -qntyOfNonDmsticSmlEmtpy);
				stockIdToQuantityMap.put(7, -qntyOfNonDmsticLrgEmpty);
				stockIdToQuantityMap.put(8, -qntyOfDmsticSbsdDfctve);
				stockIdToQuantityMap.put(9, -qntyOfDmsticNonSbsdDfctve);
				stockIdToQuantityMap.put(10, -qntyOfNonDmsticSmlDfctve);
				stockIdToQuantityMap.put(11, -qntyOfNonDmsticLrgDfctve);
				crdServiceImpl.saveCrdDetails(crdDetails);
				stockDetailsService.saveStockDetails(stockIdToQuantityMap);
			}
			else 
			{
				result = false;
				logger.info("Quantity not mentioned");
			}
		} catch (Exception e)
		{
			result = false;
			logger.error("Error while saving crd data"+e);
		}

		return result;
	}

	public List<InvoiceDetails> getInvoiceDetails(String fromDate, String toDate) {
		return invoiceDetailsService.getInvoiceDetails(fromDate, toDate);
	}

	@Override
	public void saveDeliveryPerson(DeliveryPersonMaster deliveryPersonMaster) {
		deliveryPersonService.saveDeliveryPerson(deliveryPersonMaster);
	}

	@Override
	public void saveCurrentTransaction(CurrentTransaction currentTransaction) {
		currentTransactionService.saveCurrentTransaction(currentTransaction);
		System.out.println("saved Current Transaction");
		stockDetailsService.updateStockDetails(currentTransaction);

	}

	@Override
	public List<DeliveryPersonMaster> getListOfDeliveryPerson() {
		return deliveryPersonService.getListOfDeliveryPersonMaster();

	}

	@Override
	public List<TransactionViewModel> getListOfCurrentTransaction(int transactionId) {

		return currentTransactionService.getCurrentTransactions(transactionId);
	}

	@Override
	public StockDetails updateStockDetails(int cylinderTypeId, int categoryId,
			int quantity) {

		return null;
	}

	@Override
	public Map<String, List<StockDetailsViewModel>> getStocks() {
		return stockDetailsService.getStocks();

	}

	/*
	 * @Override public List<DeliveryPersonMaster>
	 * getTransactionsByDeliveryPerson(){ return null; }
	 */
	@Override
	public Date getTransactionDate() {
		return currentTransactionService.getTransactionDate();
	}

	@Override
	public boolean saveCurrentTransactionDate(String date) {
		return currentTransactionService.saveCurrentTransactionDate(date);
	}
	@Override
	public Integer getQuantity(Integer volumeId, Integer cylinderTypeId){
		return stockDetailsService.getQuantity(volumeId, cylinderTypeId);
	}
	
	@Override
	public Integer getOpenTransaction(){
		return transactionService.getOpenTransaction();
	}
	
	@Override
	public Integer saveTransactionInfo(TransactionInfo transactionInfo){
		return transactionService.saveTransactionInfo(transactionInfo);
	}
	@Override
	public List<CylinderVolumeMaster>  retrieveListOfCylinderVolume(){
		return cylinderVolumeService.retrieveListOfCylinderVolumes();
	}
	@Override
	public List<CylinderTypeMaster> retrieveListOfCylinderType()
	{
		return cylinderTypeService.retrieveListOfCylinderType();
	}
	@Override
	public void saveOrUpdateStocks(List<StockDetails> stockDetails, int transactionId, boolean isOpeningTransactionForTheDay)
	{
		List<Stock> stocks = new ArrayList<Stock>();
		if(isOpeningTransactionForTheDay){
			for(StockDetails stockDetail: stockDetails){
				Stock stock = new Stock(stockDetail.getId(), stockDetail.getQuantity(),transactionId);
				stocks.add(stock);
			}
		}
		else
		{
			for(StockDetails stockDetail: stockDetails)
			{
				Stock stock = new Stock(stockDetail.getId(), transactionId);
				stock.setClosingStock(stockDetail.getQuantity());
				stocks.add(stock);
			}
		}
		stockDetailsService.saveOrUpdateStocks(stocks);
	}
	
	/*public void updateStocks(){
		//TransactionInfo transactionInfo = transactionService.getOpenTransaction();
		List<StockDetails> stockDetails = stockDetailsService.getStockDetails();
		List<Stock> stocks = stockDetailsService.getStockByTransactionDate("");
		for(StockDetails stockDetail:stockDetails){
			stocks.g
		}
		
		
	}*/
	
	
}
