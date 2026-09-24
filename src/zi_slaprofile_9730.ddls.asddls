@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for SLA'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_SlaProfile_9730 as select from zfso_sla_9730
{
    key sla_profile as SlaProfile,
    key priority as Priority,
    response_hours as ResponseHours,
    resolution_hours as ResolutionHours,
    escalation_email as EscalationEmail,
    description as Description
}
