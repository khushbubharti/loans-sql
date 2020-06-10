
/*1. Create the database LOANS. */
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

















--use LOANS














/*36.*/
--SELECT cust_name, LENGTH(Cust_Name), LCASE(Cust_Name), UCASE(Cust_Name)
--FROM Loan_Accounts WHERE Int_Rate < 11.00;



