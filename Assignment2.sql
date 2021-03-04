BEGIN TRANSACTION;
-- Question One
CREATE TABLE Player (
    pID       INT              NOT NULL,
    name      VARCHAR (20)     NOT NULL,
    teamName  VARCHAR (20),
    PRIMARY KEY (pID)
);

-- Question Two
ALTER TABLE Player
ADD age VARCHAT (20);

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
SELECT COUNT(pId)
FROM Player;

SELECT AVG(pID)
FROM Player;

-- Question Seven
DROP TABLE Player;

-- Question Eight
SELECT AVG(Total)
FROM Invoice
WHERE BillingCountry = 'Brazil';
