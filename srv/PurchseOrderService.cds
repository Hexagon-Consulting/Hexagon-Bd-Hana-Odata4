using {purchaseOrderSapce as purchaseOrder  } from '../db/purchaseOrder';



@path : 'service/PurchaseOrderDB'
service PurchaseOrderService {
 entity PurchaseOrder @(
    title: 'Titulo en i18n',
    Capabilities:{
        InsertRestrictions : {Insertable: true},
        UpdateRestrictions : {Updatable: true},
        DeleteRestrictions : { Deletable: true}
    }
 )as projection on purchaseOrder.PurchaseOrder;

 entity PurchaseOrderDetail as projection on purchaseOrder.PurchaseOrderDetail;

}