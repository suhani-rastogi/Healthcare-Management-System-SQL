
-- Departments
INSERT INTO Department (DepartmentName) VALUES ('Cardiology'), ('Neurology'), ('Orthopedics');

-- Doctors
INSERT INTO Doctor (Name, Specialization, DepartmentID, Phone)
VALUES ('Dr. Arjun Kumar', 'Cardiologist', 1, '9999999999'),
       ('Dr. Neha Sharma', 'Neurologist', 2, '8888888888');

-- Patients
INSERT INTO Patient (Name, Gender, DOB, Phone, Address)
VALUES ('Suhani Rastogi', 'Female', '1999-08-15', '9876543210', 'Bareilly, UP');

-- Appointments
INSERT INTO Appointment (PatientID, DoctorID, AppointmentDate, Reason)
VALUES (1, 1, '2025-07-28', 'Chest pain');

-- Diagnosis
INSERT INTO Diagnosis (AppointmentID, Disease, Notes)
VALUES (1, 'Angina', 'Further ECG recommended');

-- Prescription
INSERT INTO Prescription (AppointmentID, Medicine, Dosage)
VALUES (1, 'Nitroglycerin', '1 tablet every 8 hours');
