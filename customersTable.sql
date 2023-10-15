-- open database
.open restaurant.db

--create table
CREATE TABLE IF NOT EXISTS Customers 
(
  CustomerID int UNIQUE,
  FirstName text,
  LastName text,
  Age
);

--data generated by bard
INSERT INTO Customers VALUES
(1, 'John', 'Doe', 30),
(2, 'Jane', 'Smith', 25),
(3, 'Peter', 'Jones', 40),
(4, 'Susan', 'Brown', 35),
(5, 'David', 'Williams', 20),
(6, 'Mary', 'Taylor', 15),
(7, 'Michael', 'Green', 25),
(8, 'Sarah', 'Black', 30),
(9, 'James', 'White', 40),
(10, 'Emily', 'Gray', 35),
(11, 'Thomas', 'Brown', 20),
(12, 'Elizabeth', 'Smith', 15),
(13, 'William', 'Jones', 25),
(14, 'Caroline', 'Williams', 30),
(15, 'Charles', 'Taylor', 40),
(16, 'Jennifer', 'Green', 35),
(17, 'Robert', 'Black', 20),
(18, 'Laura', 'White', 15),
(19, 'Daniel', 'Gray', 25),
(20, 'Katherine', 'Brown', 30),
(21, 'Matthew', 'Smith', 40),
(22, 'Anna', 'Jones', 35),
(23, 'Andrew', 'Williams', 20),
(24, 'Jessica', 'Taylor', 15),
(25, 'Alexander', 'Green', 25),
(26, 'Sophie', 'Black', 30),
(27, 'Nicholas', 'White', 40),
(28, 'Victoria', 'Gray', 35),
(29, 'Benjamin', 'Brown', 20),
(30, 'Olivia', 'Smith', 15),
(31, 'Henry', 'Jones', 25),
(32, 'Amelia', 'Williams', 30),
(33, 'William', 'Taylor', 40),
(34, 'Grace', 'Green', 35),
(35, 'Eric', 'Black', 20),
(36, 'Sophia', 'White', 15),
(37, 'Charles', 'Gray', 25),
(38, 'Charlotte', 'Brown', 30),
(39, 'George', 'Smith', 40),
(40, 'Emma', 'Green', 28);