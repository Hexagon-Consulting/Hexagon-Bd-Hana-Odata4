using {purchaseOrderSapce as purchaseOrder  } from '../db/purchaseOrder';



@path : 'service/PurchaseOrderDB'
service PurchaseOrderService {
 entity PurchaseOrder as projection on purchaseOrder.PurchaseOrder;

 entity PurchaseOrderDetail as projection on purchaseOrder.PurchaseOrderDetail;

}