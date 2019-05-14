#Reyes Aquileo
#[HW 3C] T-SQL Review - Transactions and Concurrency

Transactions and Concurrency
Write a try-catch block that rolls back a transaction if an error is caught.
1.
BEGIN TRY  
     { sql_statement | statement_block }  
END TRY  

BEGIN CATCH  
     [ { sql_statement | statement_block } ]  
END CATCH  
[ ; ]  