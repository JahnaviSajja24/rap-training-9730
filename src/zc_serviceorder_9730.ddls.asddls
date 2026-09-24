@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection for Service Order'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_ServiceOrder_9730
  provider contract transactional_query as projection on ZR_ServiceOrder_9730
{
    key OrderUuid,
    OrderId,
    OrderType,
    Description,
    CustomerId,
    Plant,
    Priority,
    Status,
    TechnicianUuid,
    SlaProfile,
    ReportedAt,
    ResponseDueAt,
    ResolutionDueAt,
    PlannedStart,
    PlannedEnd,
    ActualStart,
    CompletionAt,
    ClosingDate,
    CurrencyCode,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    TotalCost,
    CompletionNote,
    CancelReason,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    _Item : redirected to composition child ZC_ServiceOrderItem_9730,
    FullName,
    CustomerName,
    _Sla
}
