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
--feat/create-table-medicalrecords
CREATE TABLE medicalrecords (
    recordid INT NOT NULL,
    animalid INT,
    recorddate TIMESTAMP,
    doctorid INT,
    diagnosis TEXT,
    prescription TEXT,  
    notes TEXT,
    PRIMARY KEY (recordid),
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);

-- to insert

--feat/insert-10-rows-animals
INSERT INTO animals (animalid, name, species, breed, dateofbirth, gender, color, ownerid)
VALUES
(1, 'Fido', 'Dog', 'Golden Retriever', '2018-03-15', 'Male', 'Golden', 1),
(2, 'Whiskers', 'Cat', 'Siamese', '2019-07-20', 'Female', 'Cream', 2),
(3, 'Rocky', 'Dog', 'German Shepherd', '2017-05-10', 'Male', 'Black and Tan', 3),
(4, 'Fluffy', 'Cat', 'Persian', '2020-01-30', 'Male', 'White', 4),
(5, 'Luna', 'Dog', 'Larbrador Retriever', '2019-11-25', 'Female', 'Yellow', 5),
(6, 'Mochi', 'Cat', 'Maine Coon', '2018-09-12', 'Male', 'Brown Tabby', 6),
(7, 'Bella', 'Dog', 'Poodle', '2020-04-05', 'Female', 'White', 7),
(8, 'Simba', 'Cat', 'Bengal', '2018-06-18', 'Male', 'Spotted Rosetted', 6),
(9, 'Max', 'Dog', 'Dachshund', '2020-07-14', 'Male', 'Black and Tan', 9),
(10,'Cleo', 'Cat', 'Ragdoll', '2019-12-22', 'Female', 'Seal Point', 10);

