.open restaurant.db
.mode table
--Top Menu Query  
SELECT 
	Menus.MenuName,
	Menus.Category,
	sum(Orders.quantity) NumberofOrders
FROM Orders,Menus
WHERE Orders.MenuID = Menus.ID
GROUP BY 1
ORDER BY 3 DESC
LIMIT 5;

--Top Visitor Query
SELECT 
	C.CustomerID,
	C.FirstName,
	C.LastName,
	count(T.TransactionDate) Visits
FROM Customers C
JOIN Transactions T ON C.CustomerID = T.CustomerID 	
GROUP BY 1
ORDER BY 4 DESC LIMIT 10;

--Visitors per day QUERY
SELECT 
	STRFTIME('%Y-%m-%d',TransactionDate) Dates,
	count(*) Visitors
FROM Transactions
GROUP BY 1
ORDER BY 2 DESC LIMIT 10;

--Number of visits per branch QUERY
SELECT 
	S.Branch,
	count(*) Visits
FROM StaffMembers S,Transactions T
WHERE S.StaffID = T.StaffID
GROUP BY 1
ORDER BY 2 DESC;

-- No. of branches visited by customers Query
SELECT 
	C.CustomerID,
	C.FirstName,
	C.LastName,
	count(DISTINCT(S.Branch)) BranchesVisited
	
FROM Customers C, Transactions T, StaffMembers S
WHERE C.CustomerID = T.CustomerID AND T.StaffID = S.StaffID
GROUP BY 1;

-- Customers wihout visit Query
SELECT 
	C.CustomerID,
	C.FirstName,
	C.LastName,
	COALESCE(T.TransactionDate,'No Visit') VisitDates
FROM Customers C
LEFT JOIN Transactions T ON C.CustomerID = T.CustomerID 
WHERE VisitDates = 'No Visit';		

-- Creating view for total payment per bill 
Create VIEW IF NOT EXISTS TotalPaymentPerBill AS
  SELECT 
		Transactions.*,
		sum(Orders.Quantity * Menus.Price_GBP) AS TotalPerBill
	FROM Orders, Menus, Transactions
	WHERE Orders.MenuId = Menus.MenuID AND Orders.TransactionID = Transactions.TransactionID
GROUP BY Orders.TransactionID;

SELECT *
FROM TotalPaymentPerBill LIMIT 10;

--Top Spenders query
SELECT 
	C.CustomerID,
	C.FirstName,
	C.LastName,
	sum(sub.TotalPerBill) AS TotalPaymentByCustomer
FROM (SELECT CustomerID, TotalPerBill FROM TotalPaymentPerBill) AS sub
JOIN Customers AS C ON C.CustomerID = sub.CustomerID
GROUP BY 1
ORDER BY 4 DESC LIMIT 5;


--Income Per Branch query

WITH 	sub1 AS (SELECT StaffID,TotalPerBill FROM TotalPaymentPerBill),
		sub2 AS (SELECT StaffID, Branch FROM StaffMembers)
		
SELECT 
	sub2.Branch,
	sum(sub1.TotalPerBill) AS Branch_Income
	
FROM sub1
JOIN sub2 ON sub1.StaffID = sub2.StaffID
GROUP BY 1
ORDER BY 2 DESC;
		

