namespace purchaseOrderSapce;

using {managed} from '@sap/cds/common';

entity PurchaseOrder{
key PurchaseOrder : Integer64 not null; 
    DateCreate : DateTime;
    Currency : String(5);
    Supplier : String(10)  not null;
    CompanyCode : String(4);
}

entity PurchaseOrderDetail {   
  key InvoicePosition : Integer64 not null ;
      HESNumber : String(10);
      Quantity : Decimal(16, 3);
      Description : String(50);
      MaterialId : String(40);
      Amount : Decimal(15, 3);
      PurchaseOrder : String(10)
};