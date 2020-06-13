

/*1. Create the database LOANS.*/ 
--create database LOANS


/*2. Use the database LOANS*/
--use LOANS


/*3. Create the table Loan_Accounts and insert tuples in it. */
--create table Loan_Accounts(
--AccNo int not null,
--Cust_Name varchar (50) not null,
--Loan_Amount int not null,
--Instalment int not null,
--Int_Rate float,
--[Start_Date] date not null,
--Interest int
--PRIMARY KEY (AccNo)
--)
--select * from Loan_Accounts
--insert into Loan_Accounts values (7, 'K.S Dhall', 500000, 48, NULL, '2008-03-05',00)
--select * from Loan_Accounts


/* 4. Display the details of all the loans. */
--select * from Loan_Accounts


/*5. Display the AccNo, Cust_Name, and Loan_Amount of all the loans.*/
--select AccNo, Cust_Name, Loan_Amount from Loan_Accounts


/*6. Display the details of all the loans with less than 40 instalments. */
--select * from Loan_Accounts where Instalments < 40


/*7. Display the AccNo and Loan_Amount of all the loans started before 01-04-2009.*/
--select AccNo, Loan_Amount from Loan_Accounts where [Start_Date] < '2009-04-01'


/*8. Display the Int_Rate of all the loans started after 01-04-2009.*/
--select Int_Rate from Loan_Accounts where Start_Date < '2009-04-01'


/*9. Display the details of all the Loans whose rate of interest is null.*/
--select * from Loan_Accounts where int_Rate is NULL


/*10. Display the details of all the loans whose rate of interest is not NULL.*/
--select * from Loan_Accounts where Int_Rate is not NULL


/*11. Display the amounts of various loans from the table Loan_Accounts. A loan amount
should appear only once.*/
--select DISTINCT Loan_Amount from Loan_Accounts


/*12. Display the number of instalments of various loans from the table Loan_Accounts. An
instalment should appear only once.*/
--select DISTINCT Instalments from Loan_Accounts


/*13. Display the details of all the loans started after 31-12-2008 for which the number of
instalments are more than 36.*/
--select * from Loan_Accounts where [Start_Date] > '2008-12-31' and Instalment > 36



/*14. Display the Cust_Name and Loan_Amount for all the loans which do not have number
of instalments 36.*/
--select Cust_Name, Loan_Amount from Loan_Accounts where Instalment <> 36


/*15. Display the Cust_Name and Loan_Amount for all the loans for which the loan amount
is less than 500000 or int_rate is more than 12.*/
--select Cust_Name, Loan_Amount from Loan_Accounts where Loan_Amount < 500000 or Int_Rate >12


/*16. Display the details of all the loans which started in the year 2009. */
--select * from Loan_Accounts where Year([Start_Date]) = 2009


/*17. Display the details of all the loans whose Loan_Amount is in the range 400000 to
500000.*/
--select * from Loan_Accounts where Loan_Amount between 400000 and 500000


/*18. Display the details of all the loans whose rate of interest is in the range 11% to 12%.*/
--select * from Loan_Accounts where Int_Rate between 11 and 12


/*19. Display the Cust_Name and Loan_Amount for all the loans for which the number of
instalments are 24, 36, or 48. (Using IN operator)*/
--select Cust_Name, Loan_Amount from Loan_Accounts where Instalment IN (24,36,48)



/*20. Display the details of all the loans whose Loan_Amount is in the range 400000 to
500000. (Using BETWEEN operator)*/
--select * from Loan_Accounts where Loan_Amount between 400000 and 500000


/*21. Display the details of all the loans whose rate of interest is in the range 11% to 12%.
(Using BETWEEN operator)*/
--select * from Loan_Accounts where Int_Rate between 11 and 12


/*22. Display the AccNo, Cust_Name, and Loan_Amount for all the loans for which the
Cust_Name ends with 'Sharma'.*/


--select AccNo, Cust_Name, Loan_Amount from Loan_Accounts where Cust_Name like '%Sharma'


/*23. Display the AccNo, Cust_Name, and Loan_Amount for all the loans for which the
Cust_Name ends with 'a'.*/
--select AccNo, Cust_Name, Loan_Amount from Loan_Accounts where Cust_Name like '%a'


/*25. Display the AccNo, Cust_Name, and Loan_Amount for all the loans for which the
Cust_Name does not contain 'P'.*/
--select AccNo, Cust_Name, Loan_Amount from Loan_Accounts where  NOT (Cust_Name like'%p%')


/*26. Display the AccNo, Cust_Name, and Loan_Amount for all the loans for which the
Cust_Name contains 'a' as the second last character.*/
--select AccNo, Cust_Name, Loan_Amount from Loan_Accounts where Cust_Name like '%a_'


/*27. Display the details of all the loans in the ascending order of their Loan_Amount.*/
--select * from Loan_Accounts ORDER BY Loan_Amount


/*28. Display the details of all the loans in the descending order of their Start_Date.*/
--select * from Loan_Accounts ORDER BY Start_Date DESC


/*29. Display the details of all the loans in the ascending order of their Loan_Amount and
within Loan_Amount in the descending order of their Start_Date.*/
--select* from Loan_Accounts ORDER BY Loan_Amount, Start_Date DESC


/*30. Put the interest rate 11.50% for all the loans for which interest rate is NULL.*/
--Update Loan_Accounts SET Int_Rate = 11.50 where Int_Rate is NULL
--select * from Loan_Accounts


/*31. Increase the interest rate by 0.5% for all the loans for which the loan amount is more
than 400000.*/
--update Loan_Accounts SET Int_Rate  = Int_Rate + 0.5
--select * from Loan_Accounts


/*32. For each loan replace Interest with (Loan_Amount*Int_Rate*Instalments) 12*100. */
--update Loan_Accounts SET Interest = (Loan_Amount * Int_Rate * Instalment) / 12 * 100


/*33. Delete the records of all the loans whose start date is before 2007.*/
--Delete from Loan_Accounts where Year (Start_Date) < 2007
--select * from Loan_Accounts


/*34. Delete the records of all the loans of 'K.P. Jain'*/--Delete from Loan_Accounts where Cust_Name = 'K.P. Jai'
--select* from Loan_Accounts


/*35. Add another column Category of type CHAR(1) in the Loan table.*/
--Alter Table Loan_Accounts ADD Category CHAR(1)


/*36. */
--SELECT 
----cust_name,
----LEN(Cust_Name),
----LOWER(Cust_Name),
----UPPER(Cust_Name)
----FROM Loan_Accounts WHERE Int_Rate < 12.00;


/*37. */
--SELECT 
--LEFT(Cust_Name, 3), 
--Right(Cust_Name, 3), 
--SUBSTRING(Cust_Name, 1, 3) 
--FROM Loan_Accounts WHERE Int_Rate > 10.00;


/*38. */
 --SELECT 
 --RIGHT(Cust_Name, 3), 
 --SUBSTRING(Cust_Name, 1, 5) 
 --FROM Loan_Accounts;


 /*39. */
-- SELECT  
--DATENAME (YEAR, Start_Date) as LOAN_YEAR,
--DATENAME (MONTH, Start_Date) as LOAN_MONTH, 
--DATENAME (DAY, Start_Date) as LOAN_DAY ,
--DATENAME (DAYOFYEAR, Start_Date) as DAY_OF_YEAR,
--DATENAME (WEEKDAY, Start_Date) as DAY_OF_WEEK  
--FROM Loan_Accounts;


/*40. */
--SELECT 
--ROUND(Int_Rate*110/100, 2) 
--FROM Loan_Accounts WHERE Int_Rate > 12;


/*41. */
--SELECT POWER(4,3), POWER(3,4);


--/*42. */
--SELECT ROUND(543.5694,2), ROUND(543.5694,3), ROUND(543.5694,-2);


/*43. */
--SELECT TRUNCATE(543.5694,2), TRUNCATE(543.5694,-1);


/*44. */
 --SELECT LEN('Prof. M. L. Sharma') ;


 /*45. */
 --SELECT CONCAT('SHEIKH', ' HAROON') 'FULL NAME' ;


 /*46. */
  --SELECT GETDATE()
  
  
 /*47. */
--SELECT 
----DATENAME(YEAR, GETDATE()), 
----DATENAME(MONTH,GETDATE ()),
----DATENAME(DAY,GETDATE());





