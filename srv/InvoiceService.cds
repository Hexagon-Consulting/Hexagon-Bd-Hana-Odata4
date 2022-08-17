using {invoiceSpace as invoice} from '../db/invoice';

@path : 'service/InvoiceDB'
service FacturaService {

  entity Invoice        as projection on invoice.Invoice {
    *,
    Status.StatusDescription as StatusDescription,
    OcType.OcTypeDescription as OcTypeDescription,
    //InvoiceDetails.Invoice as Detail
  }

  //annotate Factura with @odata.draft.enabled;
  entity InvoiceDetail as projection on invoice.InvoiceDetail{
    *,
  };
  //annotate DetalleFactura with @odata.draft.enabled;
  entity Requirement    as projection on invoice.Requirement;
  entity Charge         as projection on invoice.Charge;
}
