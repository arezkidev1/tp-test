CREATE TABLE entcom(
   numcom INT(10),
   obscom VARCHAR(50),
   datecom DATE(10),
   PRIMARY KEY(numcom),
   FOREIGN KEY(numfou) REFERENCES fournis(numfou)
);


CREATE TABLE ligcom(
   numlig TINYINT(3),
   qtecde INT(10),
   priuni VARCHAR(50),
   qteliv INT(10),
   derliv DATETIME,
   PRIMARY KEY(numlig),
   PRIMARY KEY(codart,numcom),
   FOREIGN KEY(codart) REFERENCES produit(codart),
   FOREIGN KEY(numcom) REFERENCES entcom(numcom)
);


