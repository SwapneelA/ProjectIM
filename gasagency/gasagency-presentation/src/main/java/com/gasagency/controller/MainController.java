package com.gasagency.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gasagency.handler.intf.IAccountHandler;
import com.gasagency.handler.intf.IDataHandler;
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

@Controller
public class MainController
{
	private  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	private IAccountHandler accountHandler;
	private IDataHandler dataHandler;
	@Autowired
	public void setAccountHandler(IAccountHandler accountHandler) 
	{
		this.accountHandler = accountHandler;
	}
	
	@Autowired
	public void setDataHandler(IDataHandler dataHandler) {
		this.dataHandler = dataHandler;
	}

	
	@RequestMapping(value="/welcome.html") 
	public ModelAndView welcome(HttpSession session, ModelMap modelMap)
	{
		if(session.getAttribute("error")!=null){
			modelMap.addAttribute("error", session.getAttribute("error"));
			session.removeAttribute("error");
		}
		return new ModelAndView("login");
	}
	@RequestMapping(value="/main.html",method=RequestMethod.POST)
	public ModelAndView validateUser(HttpServletRequest request,HttpServletResponse response, ModelMap modelMap, HttpSession session){
		
		String username = request.getParameter("userName");
		String password = request.getParameter("password");
		
		if(accountHandler.validateUser(username, password))
		{
			Map<String,List<StockDetailsViewModel>> stockData = dataHandler.getStocks();
			modelMap.addAttribute("stockData", stockData);
			return new ModelAndView("stockdetails");
		}
		else
		{
			session.setAttribute("error", true);
			return new ModelAndView("redirect:/welcome.html");
			
		}
	}
	
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
	{
		request.getSession().invalidate();
		 response.setHeader("Cache-Control", "no-cache");
	        response.setHeader("Pragma", "no-cache");
	        response.setHeader("Expires", "-1");
		return new ModelAndView("redirect:/welcome.html");
	}
	@RequestMapping(value="/invoiceEntry.html") 
	public ModelAndView invoiceEntry(HttpSession session, ModelMap modelMap)
	{
		if(session.getAttribute("invoicesaved") != null){
			modelMap.addAttribute("invoicesaved",session.getAttribute("invoicesaved"));
			session.removeAttribute("invoicesaved");
		}
		return new ModelAndView("InvoiceEntry");
	}
	@RequestMapping(value="/searchInvoiceData.html")
	public ModelAndView getInvoiceData(HttpServletRequest request, HttpServletResponse response)
	{
		String fromDate = request.getParameter("fromDate");
		String toDate = request.getParameter("toDate");
		List<InvoiceDetails> invoiceDetailsList = dataHandler.getInvoiceDetails(fromDate, toDate);
		return new ModelAndView("SearchInvoiceData","invoiceDetailsList", invoiceDetailsList); 
	}
	@RequestMapping(value="/CRDEntry.html")
	public ModelAndView viewCRDPage(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView(/*"CRDEntry"*/);
	}
	@RequestMapping(value="/viewInvoiceDetails.html")
	public ModelAndView viewInvoicePage(HttpServletRequest request, HttpServletResponse response)
	{
		return new ModelAndView("SearchInvoiceData");
	}	
	@RequestMapping(value="/saveInvoice.html",method=RequestMethod.POST) 
	public String saveInvoiceEntry(@ModelAttribute("invoiceDetails") InvoiceDetails invoiceDetails,  BindingResult errors,
			HttpServletRequest request, 
			HttpServletResponse response, 
			ModelMap modelMap, HttpSession session)
	{
		boolean result = dataHandler.saveInvoiceEntry(invoiceDetails);
		session.setAttribute("invoicesaved", result);	
		return "redirect:/invoiceEntry.html";
	}
	@RequestMapping(value="/saveCRD.html", method=RequestMethod.POST)
	public String saveCRDEntry(@ModelAttribute("crdDetails") CRDDetails crdDetails, BindingResult errors,
			HttpServletRequest request, HttpServletResponse reponse, ModelMap modelMap, HttpSession session)
	{
		boolean result = dataHandler.saveCRDDetails(crdDetails);
		session.setAttribute("crddatasaved", result);
		return "redirect:/CRDEntry.html";
	}
	
	@RequestMapping(value="/saveDeliveryPerson.html", method=RequestMethod.POST)
	public ModelAndView saveDeliveryPerson(@ModelAttribute("deliveryPerson") DeliveryPersonMaster deliveryPersonMaster,  BindingResult errors, HttpServletRequest request,HttpServletResponse response, ModelMap modelMap)
	{
		dataHandler.saveDeliveryPerson(deliveryPersonMaster);
		return getDeliveryPersons(request, response, modelMap);
	}
	
	@RequestMapping(value="/deliveryPersons.html")
	public ModelAndView getDeliveryPersons(HttpServletRequest request,HttpServletResponse response, ModelMap modelMap)
	{	
		List<DeliveryPersonMaster> deliveryPersons = dataHandler.getListOfDeliveryPerson();
		modelMap.addAttribute("deliveryPersons", deliveryPersons);
		return new ModelAndView("AddDeliveryPerson");
	}

	@RequestMapping(value="saveTransaction.html", method=RequestMethod.POST)
	public String saveTransaction(HttpServletRequest request,HttpServletResponse response, ModelMap modelMap)
	{
		int cylinderTypeId = Integer.parseInt(request.getParameter("cylinderTypeId"));
		int cylinderCategoryId = Integer.parseInt(request.getParameter("cylinderCategoryId"));
		int operationTypeId = Integer.parseInt(request.getParameter("operationTypeId"));
		int deliveryPersonId = Integer.parseInt(request.getParameter("deliveryId"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String comments = request.getParameter("comments");
		String createDate = formatter.format(Calendar.getInstance().getTime());
		Integer transactionId = dataHandler.getOpenTransaction();
		CurrentTransaction currentTransaction = new CurrentTransaction(cylinderTypeId,cylinderCategoryId,operationTypeId,deliveryPersonId,quantity,comments,createDate,transactionId);
		dataHandler.saveCurrentTransaction(currentTransaction);
		/*List<DeliveryPersonMaster> deliveryPersonList = dataHandler.getListOfDeliveryPerson();
		modelMap.addAttribute("cylinderTypes", dataHandler.retrieveListOfCylinderType());
		modelMap.addAttribute("cylinderVolumes", dataHandler.retrieveListOfCylinderVolume());
		List<TransactionViewModel> listOfTransactions = dataHandler.getListOfCurrentTransaction(transactionId);	
		Map<String,Object> dataMap = new HashMap<String, Object>();
		dataMap.put("deliveryPersonList", deliveryPersonList);
		dataMap.put("listOfTransactions", listOfTransactions);*/
		/*return new ModelAndView("addtransaction", "dataMap", dataMap);*/
		return "redirect:/DataEntry.html";
	}
	@RequestMapping(value="/DataEntry.html")
	public ModelAndView dataEntry(HttpServletRequest request,HttpServletResponse response, 
			ModelMap modelMap)
	{
		Integer transactionId = dataHandler.getOpenTransaction();
		if(transactionId != null){
			return showTransactionPage(modelMap, transactionId);
		}
		else{
			modelMap.put("opentransactionpresent", false);
			return new ModelAndView("transactiondate");
		}
		
	}
/*	
	@RequestMapping(value="/AddDeliveryPerson.html")
	public ModelAndView AddDeliveryPerson(HttpServletRequest request,HttpServletResponse response)
	{
		List<DeliveryPersonMaster> deliveryPersonList = dataHandler.getListOfDeliveryPerson();
		//List<TransactionViewModel> listOfTransactions = dataHandler.getListOfCurrentTransaction(null);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("deliveryPersonList", deliveryPersonList);
		//map.put("listOfTransactions", listOfTransactions);
		map.put("sparta", "king");
		return new ModelAndView("AddDeliveryPerson","dataMap",map);
	}*/
	
	
	@RequestMapping(value="/getTransactionsByDeliveryperson")
	public ModelAndView getTransactionsByDeliveryPerson(){
		
		
		return null;
	}
	
	@RequestMapping(value="/getStockPage") 
	public ModelAndView getStocks(){
		Map<String,List<StockDetailsViewModel>> mapOfData = dataHandler.getStocks();
		return new ModelAndView("stockdetails","mapOfData",mapOfData);
	}
	
	
	enum CylinderTypes 
	{
		COMMODITY(1),DOMESTICSUBSI(2),DOMESTICNONSUBSI(3),NONDOMESTICSUBSI(4),NONDOMESTICNONSUBSI(5);
		int j;
		CylinderTypes(int i)
		{
			j=i;
		}
	}
	@RequestMapping(value="/saveCurrentTransactionDate.html")
	public ModelAndView saveCurrentTransactionDate(@ModelAttribute("transactionInfo")TransactionInfo transactionInfo, BindingResult errors, HttpServletRequest request,HttpServletResponse response, ModelMap modelMap){
		
		Integer transactionId = dataHandler.saveTransactionInfo(transactionInfo);
		List<StockDetails> stockDetails = dataHandler.getStockDetails();
		dataHandler.saveOrUpdateStocks(stockDetails, transactionId, true);
		return showTransactionPage(modelMap, transactionId);
	}
	
	private ModelAndView showTransactionPage(ModelMap modelMap, Integer transactionId){
		ModelAndView modelAndView = null;
		if(null!=transactionId){
			List<DeliveryPersonMaster> deliveryPersonList = dataHandler.getListOfDeliveryPerson();
			List<TransactionViewModel> listOfTransactions = dataHandler.getListOfCurrentTransaction(transactionId);	
			List<CylinderVolumeMaster> cylinderVolumes = dataHandler.retrieveListOfCylinderVolume();
			List<CylinderTypeMaster> cylinderTypes = dataHandler.retrieveListOfCylinderType();
			modelMap.put("cylinderVolumes", cylinderVolumes);
			modelMap.put("cylinderTypes", cylinderTypes);
			Map<String,Object> dataMap = new HashMap<String, Object>();
			dataMap.put("deliveryPersonList", deliveryPersonList);
			dataMap.put("listOfTransactions", listOfTransactions);
			modelAndView = new ModelAndView("addtransaction", "dataMap", dataMap);
		}
		else{
			modelAndView = new ModelAndView("transactiondate");
		}
		return modelAndView;
	}
	
	@RequestMapping(value="endTransaction.html", method=RequestMethod.POST)
	public String endDaysTransaction(HttpServletRequest request, HttpServletResponse response){
		return "redirect:/stockdetails.html";
	}
	@RequestMapping(value="stockdetails.html",method=RequestMethod.GET)
	public ModelAndView showStockDetails(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView("stockdetails");
		
	}
}
