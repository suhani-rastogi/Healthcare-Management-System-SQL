
CREATE DATABASE IF NOT EXISTS HealthcareDB;
USE HealthcareDB;

-- Department table first, because Doctor references it
CREATE TABLE Department (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Patient (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Gender VARCHAR(10),
    DOB DATE,
    Phone VARCHAR(15),
    Address TEXT
);

CREATE TABLE Doctor (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Specialization VARCHAR(100),
    DepartmentID INT,
    Phone VARCHAR(15),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Appointment (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    Reason TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);

CREATE TABLE Prescription (
    PrescriptionID INT AUTO_INCREMENT PRIMARY KEY,
    AppointmentID INT,
    Medicine TEXT,
    Dosage TEXT,
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);

CREATE TABLE Diagnosis (
    DiagnosisID INT AUTO_INCREMENT PRIMARY KEY,
    AppointmentID INT,
    Disease VARCHAR(100),
    Notes TEXT,
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
