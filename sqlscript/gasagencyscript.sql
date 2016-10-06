select * from cylindercategorymaster;
select * from cylindertypemaster;
select * from deliverypersonmaster;
select * from invoicetypemaster;
select * from operationmaster;
select * from account;
insert into cylindercategorymaster values(1,"FULL",sysdate());
insert into cylindercategorymaster values(2,"EMPTY",sysdate());
insert into cylindercategorymaster values(3,"DEFECTIVE",sysdate());

insert into CylinderTypeMaster(CylinderTypeId,CylinderType,CreateDate) values(1,"COMMODITY",sysdate());	
 insert into CylinderTypeMaster(CylinderTypeId,CylinderType,CreateDate) values(2,"DOMESTIC SUBSI",sysdate());
 insert into CylinderTypeMaster(CylinderTypeId,CylinderType,CreateDate) values(3,"DOMESTIC NONSUBSI",sysdate());	
 insert into CylinderTypeMaster(CylinderTypeId,CylinderType,CreateDate) values(4,"NON DOMESTIC SUBSI",sysdate());	
 insert into CylinderTypeMaster(CylinderTypeId,CylinderType,CreateDate) values(5,"NON DOMESTIC NONSUBSI",sysdate());	
 
 
 insert into operationmaster(OperationTypeId,OperationType,CreateDate) values(1,'RECEIVE',sysdate());
insert into operationmaster(OperationTypeId,OperationType,CreateDate) values(2,'SEND',sysdate());
select * from operationmaster;
 
 
 Insert into InvoiceTypeMaster values(1,"Non-EMR",sysdate());
Insert into InvoiceTypeMaster values(2,"EMR",sysdate());


select * from invoicedetails;
select * from stockdetails;
insert into stockdetails(StockId,CylinderTypeId,CategoryId,Quantity,CreateDate) values(1,1,1,0,sysdate());
insert into stockdetails(StockId,CylinderTypeId,CategoryId,Quantity,CreateDate) values(2,2,1,0,sysdate());
insert into stockdetails(StockId,CylinderTypeId,CategoryId,Quantity,CreateDate) values(3,3,1,0,sysdate());
insert into stockdetails(StockId,CylinderTypeId,CategoryId,Quantity,CreateDate) values(4,4,1,0,sysdate());
insert into stockdetails(StockId,CylinderTypeId,CategoryId,Quantity,CreateDate) values(5,5,1,0,sysdate());
select sd.StockId,ctm.CylinderType,ccatm.CategoryName,sd.Quantity from stockdetails sd join cylindertypemaster ctm 
on sd.CylinderTypeId = ctm.CylinderTypeId
join cylindercategorymaster ccatm 
on sd.CategoryId = ccatm.CategoryId;

select * from cylindertransaction;
















