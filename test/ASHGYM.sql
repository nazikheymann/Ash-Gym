DROP DATABASE IF EXISTS ASHGYM;

CREATE DATABASE ASHGYM;
USE ASHGYM;


CREATE TABLE Staff (
    staff_id INT NOT NULL AUTO_INCREMENT,
    finame CHAR(50) NOT NULL,
    laname CHAR(50) NOT NULL,
    gender ENUM('M', 'F', 'Other'),
    tel_number VARCHAR(20) NOT NULL,
    role ENUM('Manager', 'Salesperson', 'Trainer', 'Equipment Manager', 'Registrar') NOT NULL,
    salary DECIMAL(6 , 2 ) DEFAULT 500.00 NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NULL,
    PRIMARY KEY (staff_id)
);


CREATE TABLE Trainer (
    trainer_id INT NOT NULL,
    specialty ENUM('Back and Shoulders', 'Biceps and Triceps', 'Torso and legs', 'Weight gain and weight loss') NOT NULL,
    rating DECIMAL(3 , 2 ) DEFAULT 0.00,
    FOREIGN KEY (trainer_id)
        REFERENCES Staff (staff_id)
);

CREATE TABLE Registrar (
    registrar_id INT NOT NULL,
    stationery_allowance DECIMAL(5 , 2 ) DEFAULT 500.00,
    FOREIGN KEY (registrar_id)
        REFERENCES Staff (staff_id)
);


CREATE TABLE Salesperson (
    salesperson_id INT NOT NULL,
    bonus DECIMAL(5 , 2 ) DEFAULT 0.00,
    allowance DECIMAL(5 , 2 ) DEFAULT 0.00,
    FOREIGN KEY (salesperson_id)
        REFERENCES Staff (staff_id)
);

CREATE TABLE Equipment_Manager (
    equipmanager_id INT NOT NULL,
    allowance DECIMAL(5 , 2 ) DEFAULT 500.00,
    lostEquipment_num INT,
    FOREIGN KEY (equipmanager_id)
        REFERENCES Staff (staff_id)
);

CREATE TABLE Client (
    client_id INT NOT NULL AUTO_INCREMENT,
    fname CHAR(50) NOT NULL,
    lname CHAR(50) NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    tel_number VARCHAR(20),
    password VARCHAR(24) NOT NULL,
    email VARCHAR(100) UNIQUE,
    startDate DATE,
    endDate DATE,
    PRIMARY KEY (client_id),
    INDEX(fname)
);
CREATE INDEX testname on Client(fname);


/*
CREATE TABLE Attendance (
    staff_id INT,
    client_id INT,
    status ENUM('Present', 'Absent') NOT NULL DEFAULT 'Absent',
    checkin_time DATETIME,
    FOREIGN KEY (client_id)
        REFERENCES Client (client_id) on update cascade on delete cascade,
    FOREIGN KEY (staff_id)
        REFERENCES Staff (staff_id) on update cascade on delete cascade
);
*/

CREATE TABLE Trains (
    trainer_id INT NOT NULL,
    client_id INT NOT NULL,
    stardDate DATE,
    EndDate DATE,
    FOREIGN KEY (trainer_id)
        REFERENCES Staff (staff_id) on update cascade on delete cascade,
    FOREIGN KEY (client_id)
        REFERENCES Client (client_id)
);

CREATE TABLE Products (
    prod_id INT NOT NULL AUTO_INCREMENT,
    prod_name VARCHAR(50) NOT NULL,
    availablity INT(3),
    price DECIMAL(5 , 2 ) NOT NULL,
    PRIMARY KEY (prod_id)
);

CREATE TABLE Purchases (
    client_id INT NOT NULL,
    prod_id INT NOT NULL,
    FOREIGN KEY (client_id)
        REFERENCES Client (client_id),
    FOREIGN KEY (prod_id)
        REFERENCES Products (prod_id)
);


CREATE TABLE Subscription (
    name VARCHAR(10) NOT NULL,
    price FLOAT(5 , 2 ) CHECK (price IN (100.00 , 150.00, 500.00)),
    signup_fee FLOAT(5 , 2 ) DEFAULT 100.00,
    startDate DATE,
    endDate DATE,
    PRIMARY KEY (name)
);

CREATE TABLE Registers (
    client_id INT NOT NULL,
    subscription CHAR(10),
    FOREIGN KEY (client_id)
        REFERENCES Client (client_id) on update cascade on delete cascade,
    FOREIGN KEY (subscription)
        REFERENCES Subscription (name)
);

CREATE TABLE Equipment (
    equip_id INT NOT NULL AUTO_INCREMENT,
    equip_name VARCHAR(60),
    availability INT,
    PRIMARY KEY (equip_id)
);


CREATE TABLE Equipment_usage (
	equip_id INT NOT NULL,
    client_id INT NOT NULL,
    FOREIGN KEY (client_id)
        REFERENCES Client (client_id) on update cascade on delete cascade,
    FOREIGN KEY (equip_id)
        REFERENCES Equipment (equip_id)
);
INSERT INTO Staff (finame, laname, gender, tel_number, role, salary, startDate, endDate) VALUES
    ('John', 'Sharshembaev', 'M', '+233704287503', 'Registrar', 950.00, '2020-01-10', NULL),
    ('Aidai', 'Akhmadova', 'F', '+233545656503', 'Trainer', 630.00, '2020-02-10', NULL),
    ('Maroof', 'Rakhmanov', 'M', '+233795492398', 'Equipment Manager', 560.00, '2020-01-14', NULL),
    ('Nuzup', 'Shadiev', 'M', '+233777656523', 'Salesperson', 700.00, '2020-01-12', NULL),
    ('Hasina', 'Saeed', 'F', '+233555656986', 'Trainer', 650.00, '2020-02-06', NULL),
    ('Alinster', 'Ghaznawi', 'M', '+233555432764', 'Manager', 950.00, '2019-11-10', NULL),
    ('Mursal', 'Janati', 'F', '+233777987689', 'Trainer', 615.00, '2020-02-15', NULL),
    ('Farangis', 'Muradi', 'F', '+2337342389674', 'Trainer', 620.00, '2020-03-01', NULL),
    ('Aziz', 'Bakhtar', 'M', '+233704356789', 'Trainer', 610.00, '2020-04-03', NULL);


INSERT INTO Trainer VALUES
    (2, 3, 5.30),
    (5, 2, 7.00),
    (7, 4, 9.50), 
    (8, 1, 9.00),
    (9, 4, 9.50);

INSERT INTO Registrar VALUES
	(1, 648.50);

INSERT INTO Salesperson VALUES
	(4, 200.50, 410.00);
    
INSERT INTO Equipment_Manager VALUES
	(3, 400.00, 2);
    
INSERT INTO Client VALUES (1,'Nazik', 'Heymann', 'Female', '+233544920383', 'goinside101','nazik.heymann@ashesi.edu.gh', '2021-03-5', '2021-10-5' ),
(2,'Rita', 'Segbaya', 'Female', '+233548735241', 'Riri234','rita.segbaya@ashesi.edu.gh', '2021-03-5', '2021-09-9' ),
(3,'Rhodalyn', 'Nettey', 'Female', '+233504564321', 'RoRo01','rhodalyn.nettey@ashesi.edu.gh', '2021-04-7', '2021-11-2' ),
(4,'Naa', 'Dove', 'Female', '+233578990976', 'Na34','naa.dove@ashesi.edu.gh', '2021-02-2', '2021-10-5' );



/*
INSERT INTO Attendance Values(1,2,'Present','2020-01-12 08:00:30'),
				       (2,1, 'Present', '2021-03-22 07:50:01'),
				       (3,3,  'Present', '2011-08-21 07:05:01'),
				       (NULL,7,  'Present', '2009-11-30 07:35:01'),
				       (5,2,  'Present', '2012-09-11 07:25:01'),
				       (9,6,  'Present', '2021-08-12 07:45:01'),
				       (4,NULL,'Absent', '2021-03-11 00:00:00'),
				       (1,8,  'Present', '2020-06-01 08:00:01'),
				       (NULL,2,  'Present', '2003-09-01 07:30:01'),
				       (7,1, 'Present', '2021-09-09 07:22:01');
                       */


/*INSERT INTO Trains Values (2, 1, '2020-11-29',NULL),
						  (2, 2, '2020-12-30',NULL),
						  (5, 3, '2020-12-01','2021-04-10'),
						  (5, 4, '2021-04-09',NULL),
						  (7, 5, '2021-03-29',NULL),
						  (7, 6, '2021-02-20',NULL),
						  (2, 7, '2021-01-01','2021-04-10'),
						  (8, 8, '2021-01-04',NULL),
						  (8, 9, '2021-02-03','2021-04-17'),
						  (8, 10, '2021-01-05','2021-03-31');
                          */
                          
INSERT INTO Products Values(1,'Protein_powder', 50, 50.00),
				       (2,'Food_supplements', 60, 100.00),
				       (3,'Sanitizers', 100, 15.00),
				       (4,'Fitness_Belt', 40, 200.00),
				       (5,'Fitness_gloves', 70, 80.00);


INSERT INTO Purchases Values(1,4),
								( 1,3),
								( 2,1),
								(3 ,2),
								(4 ,5),
								(5 ,5),
								(5 ,4),
								(3 ,4),
								(2 ,2),
								(4 ,1);

INSERT INTO Subscription Values('Annual', 500.00,100.00, '2021-01-01', '2022-01-01'), 
        ('Monthly', 150.00,100.00, '2021-04-01', '2021-05-01'), 
        ('Weekly', 100.00, 100.00,'2021-06-08', '2021-06-15'),
        ('Annuall', 500.00, 100.00,'2020-02-28', '2021-02-28'),
        ('Annually', 500.00, 100.00,'2021-12-01', '2022-12-01'), 
        ('Monthlyy', 150.00,100.00, '2021-01-01', '2022-02-01');
 


INSERT INTO Registers Values(5, 'Annual'),
        (2,'Monthly'),
        (6, 'Weekly'),
        (1, 'Annual'),
        (8, 'Annual'),
		(3, 'Monthly'),
        (7, 'Annual'),
        (4, 'Annual'),
		(9, 'Monthly'),
       (10, 'Monthly');


INSERT INTO Equipment Values(1,'Leg_curl_machine', 10),
        (2,'Chest_press_machine', 5),
        (3,'Barbells', 7),
        (4,'Weight_plates', 0),
        (5,'Weight_bars', 30),
        (6,'Dumbbells', 20),
        (7,'Thread_mills', 15);

        

SELECT 
    trainer_id,
    finame,
    laname,
    gender,
    tel_number,
    role,
    salary,
    startDate,
    specialty,
    rating
FROM
    Staff s
        INNER JOIN
    Trainer t
WHERE
    s.staff_id = t.trainer_id
ORDER BY rating DESC;

SELECT 
    p.prod_name AS 'Product',
    COUNT(u.prod_id) AS 'Amount bought'
FROM
    Products p,
    Purchases u
WHERE
    p.prod_id = u.prod_id
GROUP BY p.prod_id;

SELECT 
    s.staff_id,
    s.finame,
    s.laname,
    s.tel_number,
    a.status,
    a.checkin_time
FROM
    Staff s
        LEFT JOIN
    Attendance a ON s.staff_id = a.staff_id
WHERE
    status LIKE 'Absent';
    
SELECT 
    c.fname, c.lname, c.tel_number, s.finame, s.laname
FROM
    Client c,
    Staff s,
    Trains t
WHERE
    s.staff_id = t.trainer_id
        AND t.EndDate IS NULL
        AND c.client_id = t.client_id;

SELECT 
    subscription, COUNT(subscription) AS 'Most subscribed'
FROM
    Registers
GROUP BY subscription
LIMIT 1;

SELECT 
    SUM(availability) AS 'Number of equipment available'
FROM
    Equipment;
    

SELECT 
    c.fname, c.lname
FROM
    Client AS c
WHERE
    c.client_id IN (SELECT 
            client_id
        FROM
            Purchases);