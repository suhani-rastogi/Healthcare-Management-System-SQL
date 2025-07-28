
-- List all patients
SELECT * FROM Patient;

-- Upcoming appointments for a doctor
SELECT P.Name AS Patient, A.AppointmentDate, A.Reason
FROM Appointment A
JOIN Patient P ON A.PatientID = P.PatientID
WHERE A.DoctorID = 1;

-- Add new appointment
INSERT INTO Appointment (PatientID, DoctorID, AppointmentDate, Reason)
VALUES (1, 2, '2025-08-01', 'Headache');

-- View prescriptions by patient
SELECT Pr.Medicine, Pr.Dosage
FROM Prescription Pr
JOIN Appointment A ON Pr.AppointmentID = A.AppointmentID
WHERE A.PatientID = 1;
