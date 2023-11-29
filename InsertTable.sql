-- Insertar 10 filas de datos en la tabla Supplier con las columnas proporcionadas
INSERT INTO Supplier (SupplierID, SupplierName, PhoneNumber, Address)
VALUES
(301, 'MedicoSource Inc.', '555-1234', '123 Main Street'),
(302, 'HealthLink Suppliers', '555-5678', '456 Oak Avenue'),
(303, 'MediCare Solutions Co.', '555-9876', '789 Maple Street'),
(304, 'Apex Medical Distributors', '555-4321', '890 Pine Avenue'),
(305, 'MedTech Innovations', '555-8765', '901 Elm Street'),
(306, 'VitalCare Suppliers', '555-3456', '234 Cedar Avenue'),
(307, 'MedSupply Partners', '555-6543', '567 Oak Street'),
(308, 'WellnessPro Enterprises', '555-2109', '890 Maple Avenue'),
(309, 'MediGoods Global', '555-7890', '123 Cherry Street'),
(310, 'MedEquip Solutions', '555-1234', '456 Pine Street');

INSERT INTO Product (ProductID, ProductName, PricePerUnit, ExpiryDate, QuantityInStock)
VALUES
(101, 'Painkiller X', 2.50, '2023-12-31', 200),
(102, 'Cough Syrup Y', 4.00, '2024-06-30', 150),
(103, 'Antibiotic Z', 6.00, '2023-10-15', 100),
(104, 'Headache Relief', 3.75, '2023-11-30', 180),
(105, 'Allergy Medicine', 5.25, '2024-03-31', 120),
(106, 'Digestive Aid', 4.50, '2023-09-30', 90),
(107, 'Cold Medicine', 3.25, '2024-01-15', 220),
(108, 'Pain Relief Gel', 6.75, '2023-08-31', 75),
(109, 'Eye Drops', 5.00, '2024-04-30', 140),
(110, 'Vitamin Supplement', 7.00, '2023-07-31', 100);


INSERT INTO SupplierProduct (ProductID, SupplierID, QuantitySupplied)
VALUES
(101, 301, 100),
(102, 301, 150),
(101, 302, 100),
(103, 302, 120),
(104, 302, 200),
(105, 303, 90),
(106, 304, 180),
(107, 305, 160),
(108, 305, 130),
(109, 306, 110),
(110, 307, 100),
(105, 308, 90),
(101, 309, 40),
(109, 310, 120),
(101, 307, 50),
(101, 308, 50),
(104, 309, 70),
(105, 310, 90),
(109, 307, 130),
(110, 308, 140),
(102, 309, 180),
(102, 310, 20);

INSERT INTO Employee (EmployeeID, Name, StartDate, EndDate, Role) VALUES
(1, 'Miguel Bravo', '2023-01-01', '9999-12-31', 'Manager'),
(2, 'Benjamin Williams', '2023-01-15', '9999-12-31', 'Manager'),
(3, 'Sophia Brown', '2023-02-01', '9999-12-31', 'Sales Person'),
(4, 'Daniel Miller', '2023-02-05', '9999-12-31', 'Sales Person'),
(5, 'Olivia Davis', '2023-02-10', '9999-12-31', 'Sales Person'),
(6, 'Liam Wilson', '2023-02-15', '9999-12-31', 'Sales Person'),
(7, 'Ava Moore', '2023-03-01', '9999-12-31', 'Sales Person'),
(8, 'Ethan Taylor', '2023-03-05', '2025-12-31', 'Sales Person'),
(9, 'Mia Anderson', '2023-03-10', '9999-12-31', 'Sales Person'),
(10, 'Alexander Martinez', '2023-03-15', '9999-12-31', 'Sales Person');

INSERT INTO ManagerEmployee (EmployeeID, AnnualWage) VALUES
(1, 120000.00),
(2, 90000.00);

INSERT INTO SalesEmployee (EmployeeID, workhours, hourlywage) VALUES
(3, 40.00, 20.00),
(4, 35.00, 18.00),
(5, 37.50, 19.50),
(6, 40.00, 20.00),
(7, 38.00, 19.00),
(8, 35.50, 18.50),
(9, 39.00, 19.75),
(10, 37.00, 18.25);

-- Insert data into Prescription table
INSERT INTO Prescription (PrescriptionID, ProductID, PrescriptionQuantity, PrescriptionDate, HospitalName) VALUES
(1, 101, 2, '2023-01-10', 'General Hospital'),
(2, 102, 1, '2023-02-05', 'City Medical Center'),
(3, 103, 3, '2023-03-15', 'Community Health Clinic'),
(4, 104, 2, '2023-04-20', 'City Hospital'),
(5, 105, 1, '2023-05-12', 'University Medical Center'),
(6, 106, 2, '2023-06-25', 'St. Marys Hospital'),
(7, 107, 1, '2023-07-08', 'Community Health Clinic'),
(8, 108, 3, '2023-08-18', 'General Hospital'),
(9, 109, 2, '2023-09-22', 'City Medical Center'),
(10, 110, 1, '2023-10-30', 'University Medical Center');

-- Insert data into Customer table
INSERT INTO Customer (CustomerID, SSN, CustomerName, Phone, Address, Gender) VALUES
(1, '123-45-6789', 'John Doe', '555-1234', '123 Main St', 'Male'),
(2, '234-56-7890', 'Jane Smith', '555-5678', '456 Oak St', 'Female'),
(3, '345-67-8901', 'Robert Johnson', '555-9876', '789 Pine St', 'Male'),
(4, '456-78-9012', 'Susan Williams', '555-4321', '987 Elm St', 'PreferNotToSay'),
(5, '567-89-0123', 'Michael Davis', '555-8765', '654 Birch St', 'Male'),
(6, '678-90-1234', 'Emily Taylor', '555-2345', '321 Cedar St', 'Female'),
(7, '789-01-2345', 'Daniel Brown', '555-6543', '876 Maple St', 'Male'),
(8, '890-12-3456', 'Olivia White', '555-8765', '543 Walnut St', 'Female'),
(9, '901-23-4567', 'Matthew Miller', '555-2345', '210 Pineapple St', 'Male'),
(10, '012-34-5678', 'Sophia Wilson', '555-7654', '789 Orange St', 'Female');


INSERT INTO Transaction (TransactionID, EmployeeID, CustomerID, TotalQuantitySold, TotalPrice, TransactionDate, PaymentMethod) VALUES
(1,3, 1,  2, 40.00, '2023-01-15','Credit Card'),
(2,6, 2,  1, 25.00, '2023-02-10','Cash'),
(3,3, 3,  3, 90.00, '2023-03-20','Credit Card'),
(4,4, 4,  2, 50.00, '2023-04-25','Cash'),
(5,5, 5,  1, 30.00, '2023-05-18','Credit Card'),
(6,3, 6,  2, 60.00, '2023-06-30','Cash'),
(7,7, 7,  1, 35.00, '2023-07-15','Credit Card'),
(8,8, 8,  3, 105.00 ,'2023-08-25','Cash'),
(9,9, 9,  2, 70.00, '2023-09-28','Credit Card'),
(10,5, 10, 1, 40.00, '2023-10-31','Cash');

-- Insert data into Orders table
INSERT INTO ProductTransaction (TransactionID, ProductID, Quantity) VALUES
(1,101, 200),
(1,102, 3),
(1,103, 1),
(1,110, 5),
(2,105, 7),
(3,107, 4),
(3,103, 10),
(4,109, 11),
(5,110, 2),
(6,103, 4),
(6,102, 24),
(7,107, 5),
(8,110, 56),
(8,106, 21),
(9,102, 500),
(9,105, 47),
(10,106, 55);
