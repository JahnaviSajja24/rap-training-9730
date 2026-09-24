@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ROOT ENTITY'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_ServiceOrder_9730 as select from zfso_ord_9730
composition [0..*] of ZR_ServiceOrderItem_9730 as _Item
association [0..1] to ZR_Technician_9730 as _Technician on $projection.TechnicianUuid = _Technician.TechnicianUuid
association [1..1] to ZI_Customer_9730 as _Customer on $projection.CustomerId = _Customer.CustomerId
association [0..1] to ZI_SlaProfile_9730 as _Sla on $projection.SlaProfile = _Sla.SlaProfile and $projection.Priority = _Sla.Priority
//association [1..1] to ZI_FsoItemAggr_## as _ItemAggr — a CDS view with SUM( amount ) GROUP BY order_uuid
{
    key order_uuid as OrderUuid,
    order_id as OrderId,
    order_type as OrderType,
    description as Description,
    customer_id as CustomerId,
    plant as Plant,
    priority as Priority,
    status as Status,
    technician_uuid as TechnicianUuid,
    sla_profile as SlaProfile,
    reported_at as ReportedAt,
    response_due_at as ResponseDueAt,
    resolution_due_at as ResolutionDueAt,
    planned_start as PlannedStart,
    planned_end as PlannedEnd,
    actual_start as ActualStart,
    completion_at as CompletionAt,
    closing_date as ClosingDate,
    currency_code as CurrencyCode,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    total_cost as TotalCost,
    completion_note as CompletionNote,
    cancel_reason as CancelReason,
    @Semantics.user.createdBy: true
    created_by as CreatedBy,
    @Semantics.systemDateTime.createdAt: true
    created_at as CreatedAt,
    @Semantics.user.lastChangedBy: true
    last_changed_by as LastChangedBy,
    @Semantics.systemDateTime.lastChangedAt: true
    last_changed_at as LastChangedAt,
    local_last_changed_at as LocalLastChangedAt,
    _Item,
    _Technician.FirstName as FullName,
    _Customer.CustomerName as CustomerName,
    _Sla
}
