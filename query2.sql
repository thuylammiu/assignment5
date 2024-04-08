/*Display the list of ALL Appointments for a given Dentist by their dentist_Id number. 
Include in the result, the Patient information.  */
select * from Appointment a
inner join Patient p on p.PatientId = a.PatientId
where a.DentistId =2;