@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Def of Item'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_ServiceOrderItem_9730 as select from zfso_itm_9730
association to parent ZR_ServiceOrder_9730 as _Order
on $projection.OrderUuid = _Order.OrderUuid 
{
    key item_uuid as ItemUuid,
    key order_uuid as OrderUuid,
    item_no as ItemNo,
    item_type as ItemType,
    material as Material,
    item_text as ItemText,
    @Semantics.quantity.unitOfMeasure : 'Uom'
    quantity as Quantity,
    uom as Uom,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    unit_price as UnitPrice,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    amount as Amount,
    currency_code as CurrencyCode,
    performed_on as PerformedOn,
    billable as Billable,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    local_last_changed_at as LocalLastChangedAt,
    _Order
}
