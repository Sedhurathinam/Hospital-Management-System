@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View of Appointment'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_APPOINT_SED as select from zsed_appoint
association to parent ZI_DOCTOR_SED  as _Doctor
 on $projection.Doctorid = _Doctor.Doctorid
{
    key appointmentid as Appointmentid,
    doctorid as Doctorid,
    patientname as Patientname,
    appointmentdate as Appointmentdate,
    status as Status,
    /* Association to Parent */
      _Doctor
}
