/**
 * @author SApte1
 */

function submitForm(thisObj, thisEvent){
	var invoiceId = $('invoiceId').val();
	var invoiceValue = $('invoiceValue').val();
	var truckNumber = $('truckNumber').val();
	var invoiceDate = $('invoiceDate').val();
	var qtyOfCommodity = $('qtyOfCommodity').val();
	var qtyOfSubDomestic = $('qtyOfSubDomestic').val();
	var qtyOfNonSubDomestic = $('qtyOfNonSubDomestic').val();
	var qtyOfNonDomSmall = $('qtyOfNonDomSmall').val();
	var qtyOfNonDomLarge = $('qtyOfNonDomLarge').val();
	var invoiceType = $('invoiceType').val();
	
	var jsonDataObject = new Object();
	jsonDataObject.invoiceId = invoiceId;
	jsonDataObject.invoiceValue = invoiceValue;
	jsonDataObject.truckNumber = truckNumber;
	jsonDataObject.invoiceDate = invoiceDate;
	jsonDataObject.qtyOfCommodity = qtyOfCommodity;
	jsonDataObject.qtyOfSubDomestic = qtyOfSubDomestic;
	jsonDataObject.qtyOfNonSubDomestic = qtyOfNonSubDomestic;
	jsonDataObject.qtyOfNonDomSmall = qtyOfNonDomSmall;
	jsonDataObject.qtyOfNonDomLarge = qtyOfNonDomLarge;
	jsonDataObject.invoiceType = invoiceType;
	
	var jsonData = JSON.stringify(jsonDataObject);
	$.getJSON({action:"saveInvoice.html",json:jsonData},function(data){
		alert(data.message);
	});
	
	return false;
}