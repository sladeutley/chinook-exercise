-- 1. Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT FirstName, LastName, CustomerId, Country 
FROM Customer 
WHERE country != "USA"

-- 2. Provide a query only showing the Customers from Brazil.
SELECT Customer.*
FROM Customer
WHERE Country = "Brazil"

-- 3. Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

-- GET HELP ON THIS ONE
SELECT Customer.FirstName, Customer.LastName, Invoice.InvoiceID, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Invoice
JOIN Customer
WHERE Customer.CustomerId = Invoice.CustomerId
AND Customer.Country = "Brazil"

-- 4. Provide a query showing only the Employees who are Sales Agents.
SELECT *
FROM Employee
WHERE title = "Sales Support Agent"

-- 5. Provide a query showing a unique list of billing countries from the Invoice table.
SELECT BillingCountry
FROM Invoice
GROUP BY BillingCountry

-- OR

SELECT DISTINCT BillingCountry
FROM invoice

-- 6. Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

-- *****To join two columns - (employee.FirstName || " " || employee.LastName)  FullName
SELECT (employee.FirstName || " " || employee.LastName) FullName, Invoice.*
FROM Employee
JOIN Customer 
ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice
ON Invoice.CustomerId = Customer.CustomerId

-- 7. Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT (Employee.FirstName || " " || Employee.LastName) "Sales Rep", (Customer.FirstName || " " ||Customer.LastName) "customer name", Invoice.Total, Customer.Country
FROM Employee
JOIN Customer
ON Customer.SupportRepId = EmployeeId
JOIN Invoice
ON Invoice.CustomerId = Customer.CustomerId

-- 8. How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?
-- GET HELP ON THIS ONE

SELECT Invoices.*
FROM 

-- 9. Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

Select count(invoiceLine.invId) "InvLine Count"
FROM InvoiceLine
WHERE InvoiceLine.InvoiceId = 37