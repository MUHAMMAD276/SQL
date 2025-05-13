CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100) UNIQUE NOT NULL
	    Age INT CHECK (Age >= 18),
    Salary DECIMAL(10,2) CHECK (Salary >= 300),
    Email VARCHAR(100) UNIQUE,
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
)

CREATE TABLE departments
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100) NOT NULL,
    Age INT CHECK (Age >= 18),
    Salary DECIMAL(10,2) CHECK (Salary >= 300),
    Email VARCHAR(100) UNIQUE,
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
(1, 'HR'),
(2, 'Finance'),
(3, 'IT');
INSERT INTO Employees (EmpID, EmpName, Age, Salary, Email, DeptID)
VALUES (104, 'MALIKA', 22, 900.00, 'david@example.com', 1);


INSERT INTO Employees (EmpID, EmpName, Age, Salary, Email, DeptID)
VALUES (105, 'Eve', 26, 1100.00, 'alice@example.com', 2);


INSERT INTO Employees (EmpID, EmpName, Age, Salary, Email, DeptID)
VALUES (106, 'Frank', 19, 950.00, 'frank@example.com', 3);


INSERT INTO Employees (EmpID, EmpName, Age, Salary, Email, DeptID)
VALUES (107, 'Grace', 29, 350.00, 'grace@example.com', 1);


INSERT INTO Employees (EmpID, EmpName, Age, Salary, Email, DeptID)
VALUES (108, 'Henry', 32, 1300.00, 'henry@example.com', 3);


INSERT INTO Employees (EmpID, EmpName, Age, Salary, Email, DeptID)
VALUES (101, 'Ivy', 27, 1050.00, 'ivy@example.com', 2);


select *from Departments

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT,
    Description VARCHAR(255)
);



INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (1, 'Laptop', 'Electronics', 1113.62, 71, 'Detachable keyboard');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (2, 'Smartphone', 'Electronics', 820.32, 16, '15-inch screen');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (3, 'Chair', 'Furniture', 760.51, 45, 'Ergonomic office chair');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (4, 'Desk', 'Furniture', 819.69, 20, 'Wooden with drawers');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (5, 'Book', 'Stationery', 243.69, 142, 'Hardcover textbook');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (6, 'Pen', 'Stationery', 1.25, 500, 'Blue ink ballpoint');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (7, 'Monitor', 'Electronics', 299.99, 30, '24-inch LED');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (8, 'Tablet', 'Electronics', 420.00, 28, '10-inch screen');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (9, 'Sofa', 'Furniture', 650.00, 12, '3-seater fabric');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (10, 'Notebook', 'Stationery', 2.99, 300, 'A4 ruled pages');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (11, 'Mouse', 'Electronics', 25.50, 200, 'Wireless optical');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (12, 'Keyboard', 'Electronics', 40.00, 180, 'Mechanical, backlit');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (13, 'Lamp', 'Electronics', 19.99, 80, 'LED desk lamp');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (14, 'Router', 'Electronics', 59.99, 75, 'Dual-band Wi-Fi');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (15, 'Camera', 'Electronics', 299.00, 40, 'DSLR 18MP');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (16, 'Speaker', 'Electronics', 45.00, 60, 'Bluetooth enabled');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (17, 'Cabinet', 'Furniture', 120.00, 25, '2-door wooden');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (18, 'Whiteboard', 'Furniture', 65.00, 15, 'Magnetic surface');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (19, 'Stapler', 'Stationery', 3.50, 100, 'Mini stapler');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (20, 'Ruler', 'Stationery', 0.99, 250, '30 cm plastic');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (21, 'Printer', 'Electronics', 150.00, 35, 'Laser printer');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (22, 'Scanner', 'Electronics', 120.00, 30, 'Flatbed type');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (23, 'Headphones', 'Electronics', 79.99, 150, 'Noise cancelling');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (24, 'TV', 'Electronics', 499.00, 20, '40-inch LED');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (25, 'Projector', 'Electronics', 220.00, 10, 'HD ready');
INSERT INTO Products (ProductID, ProductName, Category, Price, Quantity, Description) VALUES (26, 'Charger', 'Electronics', 18.00, 90, 'USB-C fast charger');

select top 3 * FROM Products
order by price desc;




select * FROM (select * , row_number()over (order by price desc) as rownum
from products) as rankedprodects
where rownum between 11 and 20

select distinct category
from Products

select * from Products


select * from Products

where Category= 'furniture' and price>=200



select * from Products
where Category= 'description' and Quantity>=10


select *from Products
where Category='electronics' and Quantity <=1000


select * from products
where Category='accessories'or Category='furniture' and
price between 300 and 800


select * from Products

where not Category= 'appliances' or Category= 'toys' and
price<500 or price=1200


where category not in ('appliancers' or 'toys') and price <500 or price=1200
select * from Products






select * from Products
where productname like '%p%'


select * from Products
where ProductName like'%y%'



select * from Products
where ProductName like'%__[E,R]%'




