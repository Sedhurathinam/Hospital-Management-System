@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View of Doctor'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_DOCTOR_SED as select from zsed_doctor
composition [0..*] of ZI_APPOINT_SED as _Appointment
{
    key doctorid as Doctorid,
    doctorname as Doctorname,
    specialization as Specialization,
    phone as Phone,
    /* Composition */
      _Appointment
    
}
