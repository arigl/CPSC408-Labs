-- Assignment 2: By Alex Rigl

-- Question One
CREATE TABLE Player (
    pID       INT              NOT NULL,
    name      VARCHAR (20)     NOT NULL,
    teamName  VARCHAR (20),
    PRIMARY KEY (pID)
);

-- Question Two
ALTER TABLE Player
ADD age INT;

-- Question Three
INSERT INTO Player (pId, name, teamName, age)
VALUES (1, 'Player 1', 'Team A', 23);

INSERT INTO Player (pId, name, teamName)
VALUES (2, 'Player 2', 'Team A');

INSERT INTO Player (pId, name, teamName, age)
VALUES (3, 'Player 3', 'Team B', 28);

INSERT INTO Player (pId, name, teamName)
VALUES (4, 'Player 4', 'Team B');

-- Question Four
DELETE FROM Player
WHERE pID = 2;

-- Question Five
UPDATE Player
SET age = 25
WHERE age IS NULL;

-- Question Six
Select COUNT(*), AVG(age)
FROM Player;

-- Question Seven
DROP TABLE Player;

-- Question Eight
SELECT AVG(Total)
FROM Invoice
WHERE BillingCountry = 'Brazil';

-- Number Nine
SELECT AVG(Total), BillingCity
FROM Invoice
WHERE BillingCountry = 'Brazil'
GROUP BY BillingCity;

-- Number Ten
SELECT Album.Title AS Title, COUNT(Track.AlbumId) AS Tracks
FROM Album, Track
WHERE Album.AlbumId = Track.AlbumId
GROUP BY Album.Title
HAVING Tracks > 20;

-- Number Eleven
SELECT COUNT(*)
FROM Invoice
WHERE InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31';

-- Number Twelve
SELECT BillingCountry AS Country, COUNT(DISTINCT(BillingCity)) AS Count
FROM Invoice
GROUP BY BillingCountry
ORDER BY Count DESC;

-- Number Thirteen
SELECT Album.Title AS aName, Track.Name tName, MediaType.Name AS mType
FROM Album, Track, MediaType
WHERE Album.AlbumId = Track.AlbumId AND Track.MediaTypeId = MediaType.MediaTypeId;
                                                 
--Question 14
SELECT COUNT(*)
FROM Invoice, Customer, Employee 
WHERE Employee.EmployeeId = Customer.SupportRepId
AND Customer.CustomerId =
      (SELECT Invoice.CustomerId
       FROM Invoice, Employee
       WHERE Employee.FirstName = 'Jane' AND Employee.LastName = 'Peacock');
