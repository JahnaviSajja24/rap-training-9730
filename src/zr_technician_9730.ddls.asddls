@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view of Technician'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_Technician_9730 as select from zfso_tec_9730
composition [0..*] of ZR_TechnicianSkill_9730 as _Skill
{
    key technician_uuid as TechnicianUuid,
    technician_id as TechnicianId,
    first_name as FirstName,
    last_name as LastName,
    email as Email,
    phone as Phone,
    home_plant as HomePlant,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    hourly_rate as HourlyRate,
    currency_code as CurrencyCode,
    availability as Availability,
    active as Active,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    local_last_changed_at as LocalLastChangedAt,
    _Skill
}
