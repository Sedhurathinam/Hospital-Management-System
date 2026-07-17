@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view of Doctor details'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_DOCTOR_SED
  provider contract transactional_query as projection on ZI_DOCTOR_SED
{
    key Doctorid,
    Doctorname,
    Specialization,
    Phone,
    /* Associations */
    _Appointment : redirected to composition child ZC_APPOINT_SED
}
