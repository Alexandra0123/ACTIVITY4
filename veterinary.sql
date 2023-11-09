CREATE DATABASE veterinary;

-- tables

--feat/create-table-animals
CREATE TABLE animals (
    animalid INT,
    name VARCHAR(255) NOT NULL,
    species VARCHAR(255) NOT NULL,
    breed VARCHAR(255),
    dateofbirth DATE,
    gender VARCHAR(255),
    color VARCHAR(255),
    ownerid INT,
    PRIMARY KEY (animalid)
);
--feat/create-table-owners
CREATE TABLE owners (
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(255),
    olastname VARCHAR(255),
    address VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255)
);

--feat/create-table-doctors
CREATE TABLE doctors (
    doctorid INT NOT NULL,
    dfirstname VARCHAR(255) NOT NULL,
    dlastname VARCHAR(255) NOT NULL,
    specialty VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255),
    PRIMARY KEY (doctorid)
);

--feat/create-table-appointments
CREATE TABLE appointments (
    appointmentid INT PRIMARY KEY,
    animalid INT,
    appointmentdate DATE,
    reason VARCHAR(255)
);

--feat/create-table-invoices
CREATE TABLE invoices (
    invoicesid INT,
    appointmentid INT,
    totalamount NUMERIC(10, 2),
    paymentdate DATE,
    FOREIGN KEY (appointmentid) REFERENCES appointments(appointmentid)
);
