@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Customer'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_Customer_9730 as select from zfso_cus_9730
{
    key customer_id as CustomerId,
    customer_name as CustomerName,
    city as City,
    country as Country,
    sla_profile as SlaProfile,
    contact_email as ContactEmail,
    active as Active
}
