CREATE TABLE IF NOT EXISTS StaffMembers

(
StaffID INT UNIQUE, 
Age INT,
Gender TEXT,
Branch TEXT
);
--Birmingham,Edinburgh,Liverpool,London,Manchester
INSERT INTO StaffMembers VALUES
(1,20,'M','Birmingham'),
(2,23,'M','Birmingham'),
(3,19,'F','Birmingham'),
(4,22,'M','Edinburgh'),
(5,24,'F','Edinburgh'),
(6,23,'F','Edinburgh'),
(7,22,'F','Edinburgh'),
(8,19,'F','Liverpool'),
(9,23,'F','Liverpool'),
(10,26,'M','Liverpool'),
(11,25,'M','Liverpool'),
(12,23,'F','London'),
(13,22,'M','London'),
(14,24,'F','London'),
(15,22,'F','London'),
(16,26,'M','London'),
(17,22,'F','Manchester'),
(18,23,'F','Manchester'),
(19,21,'F','Manchester'),
(20,24,'M','Manchester')




