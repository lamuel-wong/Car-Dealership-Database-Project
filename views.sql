-- Views

-- The Sales Report view is designed to provide a succinct summary of all car sales transactions. 
-- It offers valuable insights into sales trends, identifies which car models are most popular, 
-- and analyses customer purchase patterns. This report is crucial for the sales department to 
-- understand performance metrics and to tailor sales strategies accordingly. By analyzing this 
-- data, the dealership can optimize inventory based on demand and focus marketing efforts on 
-- the most profitable segments, ultimately driving up sales and revenue.

CREATE VIEW SalesReport AS
SELECT c.CarID, ct.TransactionDate, ct.TransactionType, cu.FirstName, cu.LastName
FROM CarTransaction ct
JOIN Car c ON ct.CarID = c.CarID
JOIN Customer cu ON ct.CustomerID = cu.CustomerID
WHERE ct.TransactionType = 'Sale';

-- The Service Report view delivers a detailed account of services provided and parts used for 
-- each job. This information is beneficial for the service department to manage inventory, track 
-- service history, and forecast future part requirements. By understanding service trends and 
-- parts usage, the dealership can ensure parts are in stock when needed and can schedule services 
-- more efficiently, thus enhancing customer satisfaction and operational efficiency.
 
CREATE VIEW ServiceReport AS
SELECT s.ServiceID, s.RepairType, p.PartDescription, p.Quantity
FROM Service s
JOIN Part p ON s.PartsID = p.PartsID;

-- The Employee Performance view is tailored to track the number of services completed by each employee. 
-- This serves as a performance metric for the dealership's staff, highlighting productivity and 
-- identifying areas for employee development. It is highly beneficial for management to recognize 
-- high performers, encourage a competitive work environment, and allocate training resources 
-- where they are most needed to improve overall service quality and efficiency.

CREATE VIEW EmployeePerformance AS
SELECT e.EmployeeID, e.FirstName, e.LastName, COUNT(a.ServiceID) AS ServicesCompleted
FROM Employee e
JOIN Appointment a ON e.EmployeeID = a.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName;

-- The Customer Transactions view aggregates the total number of transactions conducted by each customer. 
-- This report aids the dealership in identifying its most loyal and valuable customers, which is 
-- essential for targeted marketing campaigns, loyalty programs, and personalized customer service. 
-- By leveraging this information, the dealership can enhance customer retention, increase customer 
-- lifetime value, and ultimately boost profitability.

CREATE VIEW CustomerTransactions AS
SELECT cu.CustomerID, cu.FirstName, cu.LastName, COUNT(ct.TransactionID) AS NumberOfTransactions
FROM Customer cu
JOIN CarTransaction ct ON cu.CustomerID = ct.CustomerID
GROUP BY cu.CustomerID, cu.FirstName, cu.LastName;