@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection for Technician Skill'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_TechnicianSkill_9730 as projection on ZR_TECHNICIANSKILL_9730
{
    key SkillUuid,
    key TechnicianUuid,
    SkillCode,
    SkillLevel,
    CertifiedFrom,
    CertifiedUntil,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _Technician: redirected to parent ZC_Technician_9730
}
