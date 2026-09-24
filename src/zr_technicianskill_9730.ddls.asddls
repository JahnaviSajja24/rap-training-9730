@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Def of Skill'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_TechnicianSkill_9730 as select from zfso_skl_9730
association to parent ZR_Technician_9730 as _Technician
on $projection.TechnicianUuid = _Technician.TechnicianUuid 
{
    key skill_uuid as SkillUuid,
    key technician_uuid as TechnicianUuid,
    skill_code as SkillCode,
    skill_level as SkillLevel,
    certified_from as CertifiedFrom,
    certified_until as CertifiedUntil,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    local_last_changed_at as LocalLastChangedAt,
    _Technician
}
