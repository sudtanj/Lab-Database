CREATE DEFINER=`rickhen`@`%` PROCEDURE `transaction`(IN bulan int, IN tax int)
BEGIN
SET @v1 = (SELECT group_concat(Customer_IDCUSTOMER,'') FROM Transaction WHERE Month(Transaction.TransactionDate)=bulan);
SET @custtotal = (SELECT count(Customer_IDCUSTOMER) FROM Transaction WHERE Month(Transaction.TransactionDate)=bulan);
SET @dat=SUBSTRING(@v1,3,1);
SET @counter=1;
DROP TABLE IF EXISTS projectsql.temp_table;
CREATE TABLE `projectsql`.`temp_table` (
    `Customer Id` INT NOT NULL,
    `Customer Name` VARCHAR(30),
    `Package Name` VARCHAR(30),
    `Total Transaction` VARCHAR(30),
    `Goverment Tax (in %(percent))` VARCHAR(30),
    `Total Transaction With Tax` VARCHAR(30),
    PRIMARY KEY (`Customer Id`)
);
WHILE @custtotal > 0 DO
	SET @dat=SUBSTRING(@v1,@counter,1);
    SET @customerName = (SELECT CONCAT(FIRSTNAME," ",LASTNAME) FROM (projectsql.Customer) WHERE IDCUSTOMER=@dat);
    SET @totaltransaction = (SELECT SUM(transactionAmount-(transactionAmount*SpecialDiscount/100)) AS Amount FROM (projectsql.Transaction) WHERE Customer_IDCUSTOMER=@dat);
    SET @package= (SELECT PackageName FROM Package WHERE idPackage = (SELECT DISTINCT Package_idPackage FROM Transaction WHERE Customer_IDCUSTOMER=@dat AND TransactionType='Room'));
    SET @totaltransactionwithtax= (SELECT @totaltransaction+((@totaltransaction*tax)/100));
    INSERT INTO projectsql.temp_table VALUES (@dat,
    @customerName,@package,CONCAT('Rp.',FORMAT(@totaltransaction,0)),tax,CONCAT('Rp.',FORMAT(@totaltransactionwithtax,0)));
	SET @custtotal= (SELECT @custtotal-1);
    SET @counter=(SELECT @counter+2);
END WHILE;
SELECT 
    *
FROM
    projectsql.temp_table;
DROP TABLE `projectsql`.`temp_table`;
END