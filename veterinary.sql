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

--feat/insert-10-rows-owners
INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email)
VALUES
    (1, 'Juan', 'Dela Cruz', '123 Main St, Manila', '123-456-7890', 'juan@example.com'),
    (2, 'Maria', 'Santos', '456 Eim St, Quezon City', '987-654-3210', 'maria@example.com'),
    (3, 'Antonio', 'Gonzales', '789 Oak St, Cebu', '555-123-45678', 'antonio@example.com'),
    (4, 'Elena', 'Rodriguez', '345 Pine St, Davao', '777-888-9999', 'elena@example.com'),
    (5, 'Ricardo', 'Lim', '987 Cedar St, Makati', '222-333-4444', 'ricardo@example.com'),
    (6, 'Isabela', 'Reyes', '111 Acacia St, Pasig', '999-000-1111', 'isabel@example.com'),
    (7, 'Luis', 'Torres', '555 Maple St, Mandaluyong', '123-555-7777', 'luis@example.com'),
    (8, 'Carmen', 'Fernandez', '222 Birch St, Taguig', '333-222-1111', 'carmen@example.com'),
    (9, 'Pedro', 'Santillian', '888 Spruce St, Bacolod', '888-777-3333', 'pedro@example.com'),
    (10, 'Sofia', 'Villianueva', '777 Walnut St, Iloilo', '111-999-3333', 'sofia@example.com');

    --feat/insert-10-rows-doctors
INSERT INTO doctors (doctorid, dfirstname, dlastname, specialty, phone, email)
VALUES
    (1, 'John', 'Doe', 'Cardiology', '555-1234', 'johndoe@example.com'),
    (2, 'Jane', 'Doe', 'Pediatrics', '555-5678', 'janedoe@example.com'),
    (3, 'Bob', 'Smith', 'Oncology', '555-9012', 'bobsmith@example.com'),
    (4, 'Alice', 'Johnson', 'Neurology', '555-3456', 'alicejohnson@example.com'),
    (5, 'David', 'Lee', 'Dermatology', '555-7890', 'davidlee@example.com'),
    (6, 'Sarah', 'Kim', 'Psychiatry', '555-2345', 'sarahkim@example.com'),
    (7, 'Michael', 'Chen', 'Endocrinology', '555-6789', 'michaelchen@example.com'),
    (8, 'Emily', 'Wang', 'Gastroenterology', '555-0123', 'emilywang@example.com'),
    (9, 'James', 'Nguyen', 'Rheumatology', '555-4567', 'jamesnguyen@example.com'),
    (10, 'Maria', 'Garcia', 'Allergy and Immunology', '555-8901', 'mariagarcia@example.com');

     --feat/insert-10-rows-appointments
INSERT INTO appointments (appointmentid, animalid, appointmentdate, reason)
VALUES (1, 1, '2023-11-09', 'Annual checkup'),
       (2, 2, '2023-11-10', 'Vaccination'),
       (3, 3, '2023-11-11', 'Surgery'),
       (4, 4, '2023-11-12', 'Checkup'),
       (5, 5, '2023-11-13', 'Vaccination'),
       (6, 6, '2023-11-14', 'Surgery'),
       (7, 7, '2023-11-15', 'Checkup'),
       (8, 8, '2023-11-16', 'Vaccination'),
       (9, 9, '2023-11-17', 'Surgery'),
       (10, 10, '2023-11-18', 'Checkup'),
       (11, 2, '2023-11-19', 'Vaccination');

 --feat/insert-10-rows-invoices
INSERT INTO invoices (invoicesid, appointmentid, totalamount, paymentdate)
VALUES (1, 1, 50.00, '2023-11-09'),
       (2, 2, 75.00, '2023-11-10'),
       (3, 3, 100.00, '2023-11-11'),
       (4, 4, 200.00, '2023-11-12'),
       (5, 5, 80.00, '2023-11-13'),
       (6, 6, 30.00, '2023-11-14'),
       (7, 7, 75.00, '2023-11-15'),
       (8, 8, 150.00, '2023-11-16'),
       (9, 9, 60.00, '2023-11-17'),
       (10, 10, 40.00, '2023-11-18');

         --feat/insert-10-rows-medicalrecords
INSERT INTO medicalrecords (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
VALUES 
    (1, 1, '2023-01-05 00:00:00', 1, 'Health check', 'N/A', 'Regular checkup, no issue detected'),
    (2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X', 'Administered vaccination X as per schedule'),
    (3, 3, '2023-02-02 00:00:00', 3, 'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
    (4, 4, '2023-02-15 00:00:00', 1, 'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
    (5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
    (6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment', 'Administered flea treatment'),
    (7, 7, '2023-04-12 00:00:00', 1, 'Vaccination', 'Vaccine Y', 'Administered vaccination Y as per schedule'),
    (8, 8, '2023-04-18 00:00:00', 5, 'Spaying', 'N/A', 'Successfully performed spaying surgery'),
    (9, 9, '2023-05-02 00:00:00', 4, 'Allergic reaction', 'Antihistamines', 'Allergic reaction due to food prescribed antihistamine'),
    (10, 10, '2023-05-20 00:00:00', 6, 'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');