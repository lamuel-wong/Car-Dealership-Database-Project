-- Sample Data Script and Business Reports

-- Customer table sample data
INSERT INTO Customer (CustomerID, LastName, FirstName) VALUES
(100001, 'Oxlong', 'Mike');

-- CustomerPhone table sample data
INSERT INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES
(1, 100001, '+1234567890');

-- CustomerAddress table sample data
INSERT INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES
(1, 100001, '122 Tompkins Street', 'A1B2C3');


-- Car table sample data
INSERT INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES
(1090, 'Toyota Camry', 2022, 45000, 'Blue');

-- DriveMode table sample data
INSERT INTO DriveMode (DriveModeID, ModeName) VALUES
(1, 'Automatic');
INSERT INTO DriveMode (DriveModeID, ModeName) VALUES
(2, 'Manual');
INSERT INTO DriveMode (DriveModeID, ModeName) VALUES 
(3, 'Electric');

-- CarDriveMode table sample data
INSERT INTO CarDriveMode (CarID, DriveModeID) VALUES
(1090, 1);

-- Part table sample data
INSERT INTO Part (PartsID, PartDescription, Quantity, Price) VALUES
(1011, 'Spark Plugs', 10, 19.99);

-- Service table sample data
INSERT INTO Service (ServiceID, RepairType, PartsID) VALUES
(2001, 'Engine Tune-up', 1011);

-- Employee table sample data
INSERT INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES
(5001, 'Hugh', 'Jass', 'Technician', 'Maintenance');

-- Appointment table sample data
INSERT INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES
(3011, '2023-12-05', TO_TIMESTAMP('2023-12-05 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5001, 2001);

-- Transaction table sample data
INSERT INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES
(9011, 'Purchase', '2023-12-05', 1090, 100001);

-- More sample data
INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100002, 'Doe', 'John')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (2, 100002, '+1987654321')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (2, 100002, '456 Elm Street', 'B2C3D4')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1091, 'Honda Civic', 2021, 25000, 'Red')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1091, 1) 
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9012, 'Lease', '2023-01-15', 1091, 100002)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1012, 'Oil Filter', 15, 7.99)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2002, 'Oil Change', 1012)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5002, 'Smith', 'Jane', 'Salesperson', 'Sales')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3012, '2023-02-10', TO_TIMESTAMP('2023-02-10 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5002, 2002)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100003, 'Lee', 'Anna')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (3, 100003, '+1231231234')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (3, 100003, '789 Maple Lane', 'C3D4E5')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1092, 'Ford Focus', 2020, 15000, 'White')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1092, 2)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9013, 'Sale', '2023-02-20', 1092, 100003)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1013, 'Brake Pads', 20, 35.99)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2003, 'Brake Replacement', 1013)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5003, 'Garcia', 'Carlos', 'Mechanic', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3013, '2023-03-15', TO_TIMESTAMP('2023-03-15 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5003, 2003)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100004, 'Nguyen', 'David')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (4, 100004, '+1241241245')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (4, 100004, '321 Birch Street', 'E5F6G7')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1093, 'Chevrolet Cruze', 2019, 20000, 'Grey')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1093, 3) 
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9014, 'Lease', '2023-03-25', 1093, 100004)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1014, 'Air Filter', 30, 20.50)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2004, 'Air Filter Change', 1014)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5004, 'Robinson', 'Sara', 'Sales Manager', 'Sales')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3014, '2023-04-10', TO_TIMESTAMP('2023-04-10 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5004, 2004)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100005, 'Martinez', 'Elena')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (5, 100005, '+1251251256')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (5, 100005, '654 Pine Road', 'G7H8I9')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1094, 'Nissan Altima', 2018, 30000, 'Black')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1094, 2) 
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9015, 'Sale', '2023-04-20', 1094, 100005)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1015, 'Tires', 40, 100.00)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2005, 'Tire Replacement', 1015)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5005, 'Brown', 'Michael', 'Technician', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3015, '2023-05-05', TO_TIMESTAMP('2023-05-05 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5005, 2005)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100006, 'Wilson', 'James')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (6, 100006, '+1261261267')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (6, 100006, '123 Oak Avenue', 'J1K2L3')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1095, 'Volkswagen Jetta', 2017, 35000, 'Silver')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1095, 1) 
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9016, 'Lease', '2023-05-25', 1095, 100006)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1016, 'Windshield Wipers', 50, 15.00)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2006, 'Wiper Replacement', 1016)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5006, 'Patel', 'Raj', 'Accountant', 'Finance')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3016, '2023-06-06', TO_TIMESTAMP('2023-06-06 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5006, 2006)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100007, 'Taylor', 'Emma')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (7, 100007, '+1271271278')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (7, 100007, '456 Willow Road', 'M2N3P4')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1096, 'BMW 320i', 2019, 27000, 'Blue')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1096, 2)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9017, 'Sale', '2023-07-07', 1096, 100007)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1017, 'Battery', 20, 150.00)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2007, 'Battery Replacement', 1017)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5007, 'Williams', 'John', 'Sales Associate', 'Sales')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3017, '2023-08-08', TO_TIMESTAMP('2023-08-08 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5007, 2007)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100008, 'Johnson', 'Sophia')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (8, 100008, '+1281281289')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (8, 100008, '789 Cedar Blvd', 'P5Q6R7')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1097, 'Audi A4', 2020, 22000, 'White')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1097, 3)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9018, 'Lease', '2023-09-09', 1097, 100008)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1018, 'Headlights', 25, 120.00)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2008, 'Headlight Installation', 1018)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5008, 'Miller', 'Alex', 'Service Manager', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3018, '2023-10-10', TO_TIMESTAMP('2023-10-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5008, 2008)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100009, 'Davis', 'Liam')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (9, 100009, '+1291291290')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (9, 100009, '101 Maple Street', 'S7T8U9')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1098, 'Mercedes C300', 2021, 18000, 'Red')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1098, 1)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9019, 'Sale', '2023-11-11', 1098, 100009)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1019, 'Brake Fluid', 30, 25.00)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2009, 'Brake Fluid Change', 1019)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5009, 'Anderson', 'Emily', 'Accountant', 'Finance')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3019, '2023-12-12', TO_TIMESTAMP('2023-12-12 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5009, 2009)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100010, 'Harris', 'Olivia')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (10, 100010, '+1301301301')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (10, 100010, '202 Spruce Avenue', 'V8W9X0')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1099, 'Tesla Model 3', 2022, 12000, 'Black')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1099, 2)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9020, 'Lease', '2023-01-01', 1099, 100010)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1020, 'Electric Motor Oil', 20, 45.00)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2010, 'Motor Oil Change', 1020)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5010, 'Clark', 'Bruce', 'Technician', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3020, '2023-01-20', TO_TIMESTAMP('2023-01-20 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5010, 2010)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100011, 'Smith', 'John')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (11, 100011, '+1311311312')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (11, 100011, '123 Elm Street', 'W1X2Y3')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1100, 'Toyota Camry', 2021, 15000, 'Silver')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1100, 1)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9021, 'Sale', '2023-01-25', 1100, 100011)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1021, 'Oil Filter', 25, 8.99)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2011, 'Oil Change', 1021)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5011, 'Johnson', 'Mary', 'Service Technician', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3021, '2023-02-15', TO_TIMESTAMP('2023-02-15 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5011, 2011)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100012, 'Anderson', 'Emily')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (12, 100012, '+1321321323')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (12, 100012, '456 Oak Street', 'Z4A5B6')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1101, 'Honda Civic', 2020, 18000, 'Red')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1101, 2)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9022, 'Sale', '2023-03-10', 1101, 100012)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1022, 'Spark Plugs', 30, 12.50)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2012, 'Spark Plug Replacement', 1022)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5012, 'Garcia', 'Carlos', 'Mechanic', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3022, '2023-04-05', TO_TIMESTAMP('2023-04-05 09:45:00', 'YYYY-MM-DD HH24:MI:SS'), 5012, 2012)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100013, 'Brown', 'Sophia')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (13, 100013, '+1331331334')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (13, 100013, '789 Pine Avenue', 'K5L6M7')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1102, 'Ford Mustang', 2022, 12000, 'Blue')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1102, 3)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9023, 'Sale', '2023-05-20', 1102, 100013)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1023, 'Air Conditioning Filter', 15, 18.99)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2013, 'Air Filter Replacement', 1023)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5013, 'Wilson', 'James', 'Technician', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3023, '2023-06-15', TO_TIMESTAMP('2023-06-15 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5013, 2013)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100014, 'Garcia', 'Carlos')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (14, 100014, '+1341341345')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (14, 100014, '123 Cedar Lane', 'N7P8Q9')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1103, 'Toyota Corolla', 2022, 10000, 'Silver')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1103, 1)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9024, 'Sale', '2023-07-10', 1103, 100014)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1024, 'Brake Rotors', 10, 55.75)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2014, 'Brake Rotor Replacement', 1024)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5014, 'Nguyen', 'David', 'Mechanic', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3024, '2023-08-05', TO_TIMESTAMP('2023-08-05 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), 5014, 2014)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100015, 'Robinson', 'Sara')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (15, 100015, '+1351351356')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (15, 100015, '567 Oak Street', 'L8M9N0')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1104, 'Chevrolet Malibu', 2021, 15000, 'Black')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1104, 2)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9025, 'Sale', '2023-09-15', 1104, 100015)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1025, 'Transmission Fluid', 20, 28.50)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2015, 'Transmission Fluid Change', 1025)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5015, 'Martinez', 'Elena', 'Technician', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3025, '2023-10-20', TO_TIMESTAMP('2023-10-20 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5015, 2015)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100016, 'Williams', 'John')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (16, 100016, '+1361361367')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (16, 100016, '789 Maple Avenue', 'P3Q4R5')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1105, 'Hyundai Sonata', 2022, 12000, 'White')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1105, 1)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9026, 'Sale', '2023-11-05', 1105, 100016)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1026, 'Battery Charger', 15, 32.75)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2016, 'Battery Charger Replacement', 1026)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5016, 'Taylor', 'Emma', 'Sales Associate', 'Sales')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3026, '2023-12-10', TO_TIMESTAMP('2023-12-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5016, 2016)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100017, 'Anderson', 'Olivia')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (17, 100017, '+1371371378')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (17, 100017, '456 Elm Road', 'M5N6P7')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1106, 'Kia Forte', 2020, 18000, 'Grey')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1106, 2)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9027, 'Sale', '2024-01-15', 1106, 100017)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1027, 'Brake Calipers', 10, 45.99)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2017, 'Brake Caliper Replacement', 1027)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5017, 'Harris', 'Liam', 'Mechanic', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3027, '2024-02-20', TO_TIMESTAMP('2024-02-20 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5017, 2017)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100018, 'Clark', 'Bruce')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (18, 100018, '+1381381389')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (18, 100018, '101 Cedar Street', 'N8Q9R0')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1107, 'Lexus RX 350', 2023, 8000, 'Black')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1107, 3)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9028, 'Lease', '2024-03-05', 1107, 100018)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1028, 'Engine Oil', 30, 22.50)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2018, 'Engine Oil Change', 1028)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5018, 'Wilson', 'James', 'Technician', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3028, '2024-04-10', TO_TIMESTAMP('2024-04-10 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5018, 2018)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100019, 'Miller', 'Alex')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (19, 100019, '+1391391390')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (19, 100019, '202 Birch Avenue', 'V9W0X1')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1108, 'Subaru Outback', 2023, 7000, 'Green')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1108, 1)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9029, 'Lease', '2024-05-15', 1108, 100019)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1029, 'Radiator', 20, 38.75)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2019, 'Radiator Replacement', 1029)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5019, 'Davis', 'Liam', 'Sales Manager', 'Sales')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3029, '2024-06-20', TO_TIMESTAMP('2024-06-20 14:45:00', 'YYYY-MM-DD HH24:MI:SS'), 5019, 2019)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100020, 'Nguyen', 'David')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (20, 100020, '+1401401401')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (20, 100020, '789 Cedar Road', 'S0T1U2')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1109, 'Ford Escape', 2021, 10000, 'Silver')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1109, 2)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9030, 'Sale', '2024-07-10', 1109, 100020)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1030, 'Alternator', 10, 75.99)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2020, 'Alternator Replacement', 1030)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5020, 'Harris', 'Olivia', 'Mechanic', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3030, '2024-08-15', TO_TIMESTAMP('2024-08-15 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5020, 2020)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100021, 'Garcia', 'Maria')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (21, 100021, '+1411411412')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (21, 100021, '123 Pine Lane', 'K1X2Y3')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1110, 'Honda Accord', 2022, 12000, 'Black')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1110, 1)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9031, 'Sale', '2024-09-05', 1110, 100021)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1031, 'Exhaust System', 15, 64.99)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2021, 'Exhaust System Replacement', 1031)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5021, 'Anderson', 'Olivia', 'Service Technician', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3031, '2024-10-10', TO_TIMESTAMP('2024-10-10 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), 5021, 2021)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100022, 'Martinez', 'Elena')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (22, 100022, '+1421421423')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (22, 100022, '456 Elm Avenue', 'M2N3P4')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1111, 'Toyota Camry', 2020, 18000, 'Silver')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1111, 2)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9032, 'Sale', '2024-11-15', 1111, 100022)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1032, 'Brake Pads', 20, 35.99)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2022, 'Brake Pad Replacement', 1032)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5022, 'Wilson', 'James', 'Mechanic', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3032, '2024-12-20', TO_TIMESTAMP('2024-12-20 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5022, 2022)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100023, 'Johnson', 'Sophia')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (23, 100023, '+1431431434')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (23, 100023, '789 Oak Street', 'N4Q5R6')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1112, 'Chevrolet Equinox', 2023, 9000, 'Blue')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1112, 3)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9033, 'Lease', '2025-01-05', 1112, 100023)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1033, 'Wheel Bearings', 15, 28.50)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2023, 'Wheel Bearing Replacement', 1033)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5023, 'Miller', 'Alex', 'Service Manager', 'Service')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3033, '2025-02-10', TO_TIMESTAMP('2025-02-10 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 5023, 2023)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100024, 'Davis', 'Liam')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (24, 100024, '+1441441445')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (24, 100024, '101 Cedar Avenue', 'L5X6Y7')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1113, 'Nissan Sentra', 2022, 11000, 'Red')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1113, 1)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9034, 'Lease', '2025-03-15', 1113, 100024)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1034, 'Spark Plugs', 20, 12.99)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2024, 'Spark Plug Replacement', 1034)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5024, 'Clark', 'Bruce', 'Sales Associate', 'Sales')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3034, '2025-04-20', TO_TIMESTAMP('2025-04-20 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 5024, 2024)
SELECT * FROM DUAL;

INSERT ALL
  INTO Customer (CustomerID, LastName, FirstName) VALUES (100025, 'Smith', 'Sophia')
  INTO CustomerPhone (PhoneNumberId, CustomerId, PhoneNumber) VALUES (25, 100025, '+1451451456')
  INTO CustomerAdress (AddressID, CustomerId, Address, PostalCode) VALUES (25, 100025, '202 Elm Lane', 'M6N7P8')
  INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES (1114, 'Ford Explorer', 2021, 15000, 'Grey')
  INTO CarDriveMode (CarID, DriveModeID) VALUES (1114, 2)
  INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES (9035, 'Sale', '2025-05-20', 1114, 100025)
  INTO Part (PartsID, PartDescription, Quantity, Price) VALUES (1035, 'Air Conditioning Compressor', 15, 78.50)
  INTO Service (ServiceID, RepairType, PartsID) VALUES (2025, 'AC Compressor Replacement', 1035)
  INTO Employee (EmployeeID, LastName, FirstName, EmpPosition, Department) VALUES (5025, 'Harris', 'Olivia', 'Sales Manager', 'Sales')
  INTO Appointment (AppointmentID, AppDate, AppTime, EmployeeID, ServiceID) VALUES (3035, '2025-06-10', TO_TIMESTAMP('2025-06-10 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5025, 2025)
SELECT * FROM DUAL;


/*
DROP VIEW CustomerTransactions;
DROP VIEW EmployeePerformance;
DROP VIEW ServiceReport;
DROP VIEW SalesReport;

DROP TABLE Appointment;
DROP TABLE Employee;
DROP TABLE Service;
DROP TABLE Part;
DROP TABLE CarTransaction;
DROP TABLE CarDriveMode;
DROP TABLE DriveMode;
DROP TABLE Car;
DROP TABLE CustomerAdress;
DROP TABLE CustomerPhone;
DROP TABLE Customer;
*/
