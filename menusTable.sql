-- open database
.open restaurant.db
  
CREATE TABLE IF NOT EXISTS Menus
(
MenuID int UNIQUE,
MenuName text,
Category text,
Price_GBP numeric
);

--data generated by bard
INSERT INTO Menus VALUES
(1, 'Pizza', 'Italian', 15.35),
(2, 'Pasta', 'Italian', 12.25),
(3, 'Salad', 'Italian', 10.25),
(4, 'Steak', 'American', 25.00),
(5, 'Burger', 'American', 15.00),
(6, 'Fries', 'American', 5.00),
(7, 'Chicken Wings', 'American', 10.00),
(8, 'Soup', 'American', 8.00),
(9, 'Sandwich', 'American', 12.00),
(10, 'Tacos', 'Mexican', 10.00),
(11, 'Burrito', 'Mexican', 12.00),
(12, 'Quesadilla', 'Mexican', 10.00),
(13, 'Nachos', 'Mexican', 8.35),
(14, 'Fajitas', 'Mexican', 20.35),
(15, 'Sushi', 'Japanese', 15.25),
(16, 'Ramen', 'Japanese', 12.50),
(17, 'Stir Fry', 'Chinese', 10.25),
(18, 'Fried Rice', 'Chinese', 8.00),
(19, 'Wonton Soup', 'Chinese', 5.00),
(20, 'Kung Pao Chicken', 'Chinese', 15.75),
(21, 'General Tso Chicken', 'Chinese', 12.00),
(22, 'Pad Thai', 'Thai', 10.00),
(23, 'Tom Yum Soup', 'Thai', 8.35),
(24, 'Green Curry', 'Thai', 15.00),
(25, 'Red Curry', 'Thai', 12.00),
(26, 'Pad Kee Mao', 'Thai', 10.25),
(27, 'Mango Sticky Rice', 'Thai', 5.00),
(28, 'Cheesecake', 'Dessert', 10.25),
(29, 'Ice Cream', 'Dessert', 5.00),
(30, 'Brownies', 'Dessert', 8.00),
(31, 'Cookies', 'Dessert', 6.00),
(32, 'Tiramisu', 'Dessert', 12.00),
(33, 'Crêpe', 'Dessert', 15.00),
(34, 'Donut', 'Dessert', 10.75),
(35, 'Coffee', 'Drinks', 5.00),
(36, 'Tea', 'Drinks', 3.00),
(37, 'Soda', 'Drinks', 2.00),
(38, 'Juice', 'Drinks', 4.00),
(39, 'Water', 'Drinks', 1.00),
(40, 'Beer', 'Drinks', 7.00);