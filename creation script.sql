-- Customer table creation
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY CONSTRAINT chk_CustId CHECK (
        CustomerID BETWEEN '100000' AND '999999'
    ),
    LastName VARCHAR(50) NOT NULL,
    FirstName VARCHAR(50) NOT NULL
);

CREATE TABLE CustomerPhone (
    PhoneNumberId INT PRIMARY KEY, 
    CustomerId INT,
    PhoneNumber VARCHAR(15) NOT NULL,
    CONSTRAINT fk_customer_phone FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE CustomerAdress (
    AddressID INT PRIMARY KEY,
    CustomerId INT,
    Address VARCHAR(20) NOT NULL,
    PostalCode VARCHAR(8) NOT NULL,
    CONSTRAINT fk_customer_address FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Car table creation
-- Car table with unique CarID and car details

CREATE TABLE Car (
    CarID INT PRIMARY KEY,
    CarModel VARCHAR(50),
    Year INT NOT NULL,
    Mileage INT NOT NULL,
    Color VARCHAR(20) NOT NULL
);

-- DriveMode table to store different drive modes
CREATE TABLE DriveMode (
    DriveModeID INT PRIMARY KEY,
    ModeName VARCHAR(10) NOT NULL
);

--drive modes with cars 
CREATE TABLE CarDriveMode (
    CarID INT,
    DriveModeID INT,
    PRIMARY KEY (CarID, DriveModeID),
    CONSTRAINT fk_car_drive FOREIGN KEY (CarID) REFERENCES Car(CarID),
    CONSTRAINT fk_drive_mode FOREIGN KEY (DriveModeID) REFERENCES DriveMode(DriveModeID)
);

-- Transaction table creation, join car and customer
CREATE TABLE CarTransaction (
    TransactionID INT PRIMARY KEY,
    TransactionType VARCHAR(50) NOT NULL,
    TransactionDate DATE NOT NULL,
    CarID INT,
    CustomerID INT,
    CONSTRAINT fk_car FOREIGN KEY (CarID) REFERENCES Car(CarID),
    CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Part table creation
CREATE TABLE Part (
    PartsID INT PRIMARY KEY,
    PartDescription VARCHAR(100) NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

-- Service table creation
CREATE TABLE Service (
    ServiceID INT PRIMARY KEY,
    RepairType VARCHAR(50) NOT NULL,
    PartsID INT,
    CONSTRAINT fk_parts FOREIGN KEY (PartsID) REFERENCES Part(PartsID)
);


-- Employee table creation
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    LastName VARCHAR(50) NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    EmpPosition VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL
);

-- Appointment table creation, join emp and service
CREATE TABLE Appointment (
    AppointmentID INT PRIMARY KEY,
    AppDate DATE NOT NULL,
    AppTime TIMESTAMP NOT NULL,
    EmployeeID INT,
    ServiceID INT,
    CONSTRAINT fk_employee FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    CONSTRAINT fk_service_appt FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID)
);