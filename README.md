# Car Dealership Database Management System

This project is a relational database management system designed for a fictional car dealership providing hands-on experience in designing and implementing a database to meet client requirements. The database supports functionalities such as customer management, inventory tracking, employee task assignments, service scheduling, and transaction processing.

---

## Features

1. **Customer Management**
   - Stores customer details including contact information, addresses, and transaction history.
   - Tracks customer interactions and allows for efficient follow-ups.

2. **Vehicle Inventory Tracking**
   - Maintains a list of cars available for sale or lease.
   - Tracks attributes like model, year, mileage, color, and drive mode.

3. **Employee Task Management**
   - Records employee details such as name, position, and department.
   - Assigns service tasks and tracks task completion.

4. **Service Scheduling**
   - Manages repair appointments and parts usage.
   - Tracks service history for vehicles.

5. **Sales and Transactions**
   - Tracks car sales, leases, and transactions with customers.
   - Provides a clear history of all dealership transactions.

---

## Database Schema Overview

### Tables:

- **Customer**: Stores customer details.
- **CustomerPhone**: Manages customer contact numbers.
- **CustomerAddress**: Stores customer addresses.
- **Car**: Details of cars in the inventory.
- **DriveMode**: Types of drive modes (e.g., Automatic, Manual).
- **CarDriveMode**: Links cars to their drive modes.
- **CarTransaction**: Tracks sales and lease transactions.
- **Part**: Details of available parts.
- **Service**: Information about services provided.
- **Employee**: Records employee information.
- **Appointment**: Schedules repair appointments.

### Views:

- **SalesReport**: Provides insights into car sales trends.
- **ServiceReport**: Tracks services provided and parts used.
- **EmployeePerformance**: Monitors employee productivity.
- **CustomerTransactions**: Aggregates transaction data for each customer.

---

## Sample Data

### Example Records:

#### Customers:
```sql
INSERT INTO Customer (CustomerID, LastName, FirstName) VALUES
(100001, 'Oxlong', 'Mike');
```

#### Cars:
```sql
INSERT INTO Car (CarID, CarModel, Year, Mileage, Color) VALUES
(1090, 'Toyota Camry', 2022, 45000, 'Blue');
```

#### Transactions:
```sql
INSERT INTO CarTransaction (TransactionID, TransactionType, TransactionDate, CarID, CustomerID) VALUES
(9011, 'Purchase', '2023-12-05', 1090, 100001);
```

---

## Requirements

### Tools & Technologies:

- Oracle SQL for database creation and management.
- SQL scripts for data insertion and views.
- Entity-Relationship Diagrams for database design.

### Data Volume:

- **Tables**: 6-10 tables.
- **Sample Data**: 20-30 rows per table for testing.

---

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/lamuel-wong/Car-Dealership-Database-Project/tree/main
   ```

2. Set up the database:
   - Execute `businessReport.sql` to create tables, insert sample data, and define views.

3. Verify installation:
   - Ensure the SQL scripts execute without errors.

## About The Project

This project was designed to gain hands-on experience in database design and implementation by simulating the creation of a functional database for a fictional car dealership. The objectives include:

- Understanding database normalization and relational design principles.

- Practicing SQL scripting for table creation, data insertion, and report generation.

- Developing insights into how databases support business operations.
