@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection for Service Order Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_ServiceOrderItem_9730 as projection on ZR_ServiceOrderItem_9730
{
    key ItemUuid,
    key OrderUuid,
    ItemNo,
    ItemType,
    Material,
    ItemText,
    @Semantics.quantity.unitOfMeasure : 'Uom'
    Quantity,
    Uom,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    UnitPrice,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    Amount,
    CurrencyCode,
    PerformedOn,
    Billable,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    _Order: redirected to parent ZC_ServiceOrder_9730
}
