namespace invoiceSpace;

using {managed} from '@sap/cds/common';
using { mastersSpace as master } from './masters';



entity Invoice  {
  key InvoiceNumber : String(14) not null;
  //key InvoiceNumberId : UUID @(Core.Computed : true);
  key InvoiceNumberId : Integer64 not null;
  key Supplier : String(10)  not null;
      Status : Association[1] to master.Status;
      PurchaseOrder : String(10) ;
      CompanyCode : String(4);
      Currency : String(5);
      IssuedDate : Date;
      DocumentID : String(15);
      SAPInvoiceNumber : String(10);
      Description : String(50);
      SupplierMail : String(241);
      ClearedInvoice : Integer64 default (0);
      OcType : Association[1] to master.OcType not null;
      CancellationDate : DateTime;
      CancellationReason : String(20);
      synchronized : Integer64 default (0);
      UserCreate : String(60);
      DateCreate : DateTime;
      //InvoiceDetails : Association [0..*] to InvoiceDetail { InvoicePosition };
      InvoiceDetails : Association to many InvoiceDetail on InvoiceDetails.Invoice;
      //InvoiceDetails : composition of many InvoiceDetail on InvoiceDetails.InvoicePosition;	
};

entity InvoiceDetail {
      Invoice : String(14); //Association[1] to Invoice { InvoiceNumber, InvoiceNumberId, Supplier };
      InvoicePosition : String(10);
      HESNumber : String(10);
      Quantity : Decimal(16, 3);
      Description : String(50);
      MaterialId : String(40);
      Amount : Decimal(15, 3);
      PurchaseOrder : String(10)
};

entity Requirement  {
  key IdRequirement : Integer64 not null;
  key Requirement : String(15);
};


entity Charge  {
  key IdCharge : Integer64 not null;
      DescriptionCharge : String(100);
};


