use Blood_bank;
-- CREATE TABLE Donor(
-- 	donor_id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(255),
--     last_name VARCHAR(255),
--     gender VARCHAR(255),
--     birth_date VARCHAR(255),
--     blood_type VARCHAR(20),
--     contact_number VARCHAR(15),
--     email VARCHAR(255),
--     address VARCHAR(255),
--     last_donation_date DATE
-- );
-- CREATE TABLE Recipients (
-- 	recipient_id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(255),
--     last_name VARCHAR(255),
--     gender VARCHAR(100),
--     birth_date VARCHAR(255),
--     blood_type VARCHAR(20),
--     contact_number VARCHAR(15),
--     email VARCHAR(255),
--     address VARCHAR(255),
--     reequires_date DATE
-- );
-- CREATE TABLE Blood_stock(
-- 	blood_id INT PRIMARY KEY AUTO_INCREMENT,
--     blood_type VARCHAR(20),
--     quantity_in_units INT,
--     expiry_date DATE
-- );
-- CREATE TABLE Donations (
-- 	donation_id INT PRIMARY KEY AUTO_INCREMENT,
--     donor_id INT,
--     blood_type VARCHAR(20),
--     donation_date DATE,
--     quantity_in_units INT,
--     FOREIGN KEY (donor_id) REFERENCES Donor(donor_id)
-- );
-- CREATE TABLE Requests(
-- 	request_id INT PRIMARY KEY AUTO_INCREMENT,
--     recipient_id INT,
--     blood_type VARCHAR(20),
--     quantity_requested INT,
--     requested_date DATE,
--     status ENUM ('Pending','Fulfilled','Rejected'),
--     FOREIGN KEY (recipient_id) REFERENCES Recipients
--     (recipient_id)
-- );
-- INSERT INTO Donor (first_name, last_name, gender, birth_date, blood_type, contact_number, email, address, last_donation_date) 
-- VALUES 
-- ('John', 'Doe', 'Male', '1985-04-12', 'O+', '1234567890', 'johndoe@example.com', '123 Main St, City', '2024-07-20'),
-- ('Jane', 'Smith', 'Female', '1990-08-22', 'A+', '0987654321', 'janesmith@example.com', '456 Elm St, City', '2024-07-15'),
-- ('Michael', 'Johnson', 'Male', '1982-03-15', 'B+', '1122334455', 'michaelj@example.com', '789 Oak St, City', '2024-06-25'),
-- ('Emily', 'Davis', 'Female', '1993-09-10', 'AB-', '2233445566', 'emilyd@example.com', '321 Pine St, City', '2024-05-30'),
-- ('Robert', 'Brown', 'Male', '1979-01-20', 'O-', '3344556677', 'robertb@example.com', '654 Maple St, City', '2024-07-05'),
-- ('Linda', 'Wilson', 'Female', '1988-12-05', 'A-', '4455667788', 'lindaw@example.com', '987 Cedar St, City', '2024-04-12'),
-- ('James', 'Taylor', 'Male', '1975-11-11', 'B-', '5566778899', 'jamest@example.com', '123 Birch St, City', '2024-06-20'),
-- ('Patricia', 'Anderson', 'Female', '1992-07-07', 'AB+', '6677889900', 'patriciaa@example.com', '456 Willow St, City', '2024-08-01'),
-- ('David', 'Thomas', 'Male', '1986-10-02', 'O+', '7788990011', 'davidt@example.com', '789 Walnut St, City', '2024-07-10'),
-- ('Susan', 'Moore', 'Female', '1991-05-25', 'A+', '8899001122', 'susanm@example.com', '321 Cherry St, City', '2024-07-25');
-- INSERT INTO Recipients (first_name, last_name, gender, birth_date, blood_type, contact_number, email, address, reequires_date) 
-- VALUES 
-- ('Alice', 'Johnson', 'Female', '1989-02-10', 'B+', '1122334455', 'alicejohnson@example.com', '789 Maple St, City', '2024-08-01'),
-- ('Bob', 'Brown', 'Male', '1978-11-25', 'AB-', '2233445566', 'bobbrown@example.com', '321 Oak St, City', '2024-08-10'),
-- ('Charlie', 'Davis', 'Male', '1992-07-14', 'O+', '3344556677', 'charliedavis@example.com', '123 Pine St, City', '2024-08-15'),
-- ('Diana', 'Evans', 'Female', '1985-05-23', 'A-', '4455667788', 'dianaevans@example.com', '456 Birch St, City', '2024-08-20'),
-- ('Eve', 'Williams', 'Female', '1993-11-01', 'O-', '5566778899', 'evewilliams@example.com', '789 Cedar St, City', '2024-08-25'),
-- ('Frank', 'Thomas', 'Male', '1975-03-19', 'B-', '6677889900', 'frankthomas@example.com', '321 Spruce St, City', '2024-08-30'),
-- ('Grace', 'Miller', 'Female', '1988-09-29', 'A+', '7788990011', 'gracemiller@example.com', '654 Oak St, City', '2024-09-05'),
-- ('Henry', 'Wilson', 'Male', '1982-12-17', 'AB+', '8899001122', 'henrywilson@example.com', '987 Maple St, City', '2024-09-10'),
-- ('Ivy', 'Moore', 'Female', '1995-01-05', 'B+', '9900112233', 'ivymoore@example.com', '543 Pine St, City', '2024-09-15'),
-- ('Jack', 'Taylor', 'Male', '1990-06-22', 'O-', '1011121314', 'jacktaylor@example.com', '876 Cedar St, City', '2024-09-20');
-- INSERT INTO Blood_stock (blood_type, quantity_in_units, expiry_date) 
-- VALUES 
-- ('O+', 50, '2024-09-30'),
-- ('A+', 30, '2024-10-15'),
-- ('B+', 20, '2024-09-20'),
-- ('AB-', 10, '2024-08-25'),
-- ('O-', 15, '2024-09-10'),
-- ('A-', 25, '2024-09-05'),
-- ('B-', 12, '2024-08-28'),
-- ('AB+', 22, '2024-10-20'),
-- ('O+', 40, '2024-11-01'),
-- ('A+', 35, '2024-11-15');
-- INSERT INTO Donations (donor_id, blood_type, donation_date, quantity_in_units) 
-- VALUES 
-- (1, 'O+', '2024-07-20', 5),
-- (2, 'A+', '2024-07-15', 3),
-- (3, 'B+', '2024-08-01', 4),
-- (4, 'AB-', '2024-07-25', 2),
-- (5, 'O-', '2024-08-10', 6),
-- (6, 'A-', '2024-07-30', 3),
-- (7, 'B-', '2024-08-05', 4),
-- (8, 'AB+', '2024-07-18', 2),
-- (9, 'O+', '2024-08-12', 5),
-- (10, 'A+', '2024-08-08', 3);
-- INSERT INTO Requests (recipient_id, blood_type, quantity_requested, requested_date, status) 
-- VALUES 
-- (1, 'B+', 2, '2024-08-01', 'Pending'),
-- (2, 'AB-', 1, '2024-08-10', 'Fulfilled'),
-- (3, 'O+', 3, '2024-08-12', 'Pending'),
-- (4, 'A+', 2, '2024-08-15', 'Rejected'),
-- (5, 'O-', 1, '2024-08-18', 'Fulfilled'),
-- (6, 'B-', 4, '2024-08-20', 'Pending'),
-- (7, 'AB+', 2, '2024-08-22', 'Fulfilled'),
-- (8, 'A-', 1, '2024-08-25', 'Rejected'),
-- (9, 'O+', 3, '2024-08-28', 'Pending'),
-- (10, 'B+', 2, '2024-08-30', 'Fulfilled');
-- SELECT COUNT(*) FROM Donor
-- WHERE blood_type = 'O-';

-- Which donor has made the most recent blood donation?
-- SELECT MAX(donation_date) FROM Donations;

-- Which donors gender is "female" and blood type is "B+"?
-- SELECT first_name, last_name,gender,blood_type
-- FROM Donor
-- WHERE gender = 'Female' OR  blood_type = 'B+';

-- How to further sort donors based on donor's birth date?
-- SELECT first_name, last_name, birth_date 
-- FROM Donor
-- ORDER BY birth_date ASC;
-- SELECT * FROM Donor
-- ORDER BY birth_date DESC;

-- Which recipient has blood type "A-" and when do they need blood?
-- SELECT * FROM Recipients;
-- SELECT first_name, last_name, blood_type, reequires_date
-- FROM Recipients
-- WHERE blood_type = "A-" ;

-- How many recipients have "pending" status?
-- SELECT * FROM Requests;
-- SELECT COUNT(recipient_id) FROM Requests
-- WHERE status = 'Pending';

-- Which recipient's request was "fulfilled" and how much blood did they request?
-- SELECT recipient_id, quantity_requested
-- FROM Requests
-- WHERE status = 'Fulfilled';

-- Which recipient requested "B-" blood type?
-- SELECT first_name, last_name, blood_type
-- FROM Recipients
-- WHERE blood_type = 'B-';

-- Which blood type has the largest stock?
-- SELECT quantity_in_units, blood_type
-- FROM blood_stock
-- WHERE quantity_in_units  = (SELECT MAX(quantity_in_units) FROM blood_stock);

-- Which blood type has the closest expiration date?
-- SELECT blood_type, expiry_date 
-- FROM blood_stock
-- ORDER BY blood_type ASC
-- LIMIT 1;

-- How much stock is currently available of "AB+" blood type?
-- SELECT SUM(quantity_in_units) as count
-- FROM blood_stock
-- WHERE blood_type = "AB+";

-- On what date can the stock in blood stock run out at the earliest?
-- SELECT blood_type, expiry_date
-- FROM blood_stock
-- ORDER BY expiry_date ASC
-- LIMIT 1

-- How many donations have been made in the month of August 2024?
-- SELECT count(*)
-- FROM donations
-- WHERE donation_date BETWEEN '2024-08-01' AND '2024-09-01';

-- List all requests that have not been fulfilled yet.
-- SELECT * FROM requests
-- WHERE status = 'Pending';

-- List all requests that have not been fukfilled yet
-- SELECT * FROM requests
-- WHERE status = 'Fulfilled';

-- List all recipients who are above a certain age.
-- SELECT * FROM recipients
-- WHERE YEAR(curdate()) - YEAR(birth_date) > 48;

-- Retrieve contact information for all donors and recipients.
-- SELECT contact_number , 'donor' AS Type FROM donor
-- UNION
-- SELECT contact_number, 'recipients' AS Type FROM recipients;












