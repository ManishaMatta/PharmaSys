-- create database PharmaSys;
-- USE PharmaSys;

-- Create Suppliers Table
DROP TABLE IF EXISTS Supplier;
CREATE TABLE IF NOT EXISTS Supplier (
    SupplierID INT PRIMARY KEY ,
    SupplierName VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255)
);

-- Create Product Table
DROP TABLE IF EXISTS Product;
CREATE TABLE  IF NOT EXISTS  Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    PricePerUnit DECIMAL(10, 2),
    ExpiryDate DATE,
    QuantityInStock INT
);

-- Create SupplierProduct Table
DROP TABLE IF EXISTS SupplierProduct;
CREATE TABLE IF NOT EXISTS SupplierProduct (
    ProductID INT,
    SupplierID INT,
    QuantitySupplied INT,
    PRIMARY KEY (ProductID, SupplierID),
    CONSTRAINT SupplierProduct_FK1 FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID),
    CONSTRAINT SupplierProduct_FK2 FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);


-- Create Employee Table
DROP TABLE IF EXISTS Employee;
CREATE TABLE IF NOT EXISTS Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    StartDate DATE,
    EndDate DATE DEFAULT '9999-12-31',
    Role VARCHAR(50)
);
ALTER TABLE Employee
ADD CONSTRAINT check_end_dates CHECK (EndDate > StartDate);


-- Create Manager_Employee Table
DROP TABLE IF EXISTS ManagerEmployee;
CREATE TABLE  IF NOT EXISTS  ManagerEmployee (
    EmployeeID INT PRIMARY KEY,
    AnnualWage DECIMAL(10, 2)
);

-- Create Sales_Employee Table
DROP TABLE IF EXISTS SalesEmployee;
CREATE TABLE  IF NOT EXISTS  SalesEmployee (
    EmployeeID INT PRIMARY KEY,
    workhours DECIMAL(10, 2),
    hourlywage  DECIMAL(10, 2)
);

-- Create Customer Table
DROP TABLE IF EXISTS Customer;
CREATE TABLE  IF NOT EXISTS  Customer (
    CustomerID INT PRIMARY KEY,
    SSN VARCHAR(11) NOT NULL,
    CustomerName VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255),
    Gender VARCHAR(50) DEFAULT 'PreferNotToSay'
);

-- Create Prescription Table
DROP TABLE IF EXISTS Prescription;
CREATE TABLE  IF NOT EXISTS  Prescription (
    PrescriptionID INT PRIMARY KEY,
    ProductID INT NOT NULL,
    PrescriptionQuantity INT,
    PrescriptionDate DATE  NOT NULL,
    HospitalName VARCHAR(100),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- Create Transaction Table
DROP TABLE IF EXISTS Transaction;
CREATE TABLE  IF NOT EXISTS  Transaction (
    TransactionID INT PRIMARY KEY,
    EmployeeID INT  NOT NULL,
    CustomerID INT  NOT NULL,
    TotalQuantitySold INT,
    TotalPrice DECIMAL(10, 2),
    TransactionDate DATE  NOT NULL,
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);


-- Create ProductTransaction Table
DROP TABLE IF EXISTS ProductTransaction;
CREATE TABLE  IF NOT EXISTS  ProductTransaction (
    TransactionID INT,
    ProductID INT,
    Quantity INT  NOT NULL,
    PRIMARY KEY (TransactionID,ProductID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (TransactionID) REFERENCES Transaction(TransactionID)
);
