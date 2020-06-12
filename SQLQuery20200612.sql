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










