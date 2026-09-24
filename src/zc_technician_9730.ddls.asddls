@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection for Technician'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_Technician_9730
  provider contract transactional_query as projection on ZR_Technician_9730
{
    key TechnicianUuid,
    TechnicianId,
    FirstName,
    LastName,
    Email,
    Phone,
    HomePlant,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    HourlyRate,
    CurrencyCode,
    Availability,
    Active,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _Skill: redirected to composition child ZC_TechnicianSkill_9730
}
