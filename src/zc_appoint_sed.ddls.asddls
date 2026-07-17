@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view of Appointment details'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_APPOINT_SED
   as projection on ZI_APPOINT_SED
{
    key Appointmentid,
    Doctorid,
    Patientname,
    Appointmentdate,
    Status,
    /* Associations */
    _Doctor : redirected to parent ZC_DOCTOR_SED
}
