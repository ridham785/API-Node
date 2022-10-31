CREATE TABLE Customer (
    id INT NOT NULL ,
    name VARCHAR(255),
    Amount INT NOT NULL,
    brokerid INT NOT NULL,
    PRIMARY KEY (id)
    
);

CREATE TABLE Broker (
    brokerid INT NOT NULL ,
    Bname VARCHAR(255),
    PRIMARY KEY (brokerid)
    
);


INSERT INTO Broker (brokerid, Bname)
VALUES ('1','Ted');
INSERT INTO Broker (brokerid, Bname)
VALUES ('2','Mark');
INSERT INTO Broker (brokerid, Bname)
VALUES ('3','Aaron');
INSERT INTO Broker (brokerid, Bname)
VALUES ('4','Luke');



INSERT INTO Customer (id, name, Amount, brokerid)
VALUES ('1','sam','3000','4');
INSERT INTO Customer (id, name, Amount, brokerid)
VALUES ('2','john','4000','2');
INSERT INTO Customer (id, name, Amount, brokerid)
VALUES ('3','mack','5000','2');
INSERT INTO Customer (id, name, Amount, brokerid)
VALUES ('4','test','3000','3');
INSERT INTO Customer (id, name, Amount, brokerid)
VALUES ('5','june','2000','3');
INSERT INTO Customer (id, name, Amount, brokerid)
VALUES ('6','mike','4000','1');
INSERT INTO Customer (id, name, Amount, brokerid)
VALUES ('7','annie','4000','2');
INSERT INTO Customer (id, name, Amount, brokerid)
VALUES ('8','micheal','2000','1');
INSERT INTO Customer (id, name, Amount, brokerid)
VALUES ('9','tom','2000','4');
INSERT INTO Customer (id, name, Amount, brokerid)
VALUES ('10','jason','6000','4');





SELECT Bname, COUNT(id) AS NumofCustomers
FROM Customer
INNER JOIN Broker ON Customer.brokerid = Broker.brokerid
GROUP BY Customer.brokerid
ORDER BY COUNT(id) DESC , Bname ASC;






    