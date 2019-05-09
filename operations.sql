UPDATE Entity set Country = "USA" WHERE ID = 1;
UPDATE Supplier set contract_start = '2019-5-7' WHERE ID = 1;
UPDATE Distributor set Tax_no = "48928347" WHERE ID = 2;
UPDATE Category set Company  = "Huawei" WHERE ID = 1;
UPDATE Mobile set Model_no = "P7" WHERE ID = 1;


DELETE FROM Entity WHERE ID = 1;
DELETE FROM Supplier WHERE contract_start = '2019-5-7';
DELETE FROM Entity WHERE Tax_no = "48928347";
DELETE FROM Entity WHERE Company = "Huawei";
DELETE FROM Entity WHERE Model_no = "P7";

SELECT * FROM Category WHERE ID = 2;

SELECT email, Tax_no -- select email and tax_no of all distributors from spain
FROM Entity, Distributor 
WHERE Entity.ID = Distributor.ID
	AND Country = "spain";

SELECT contract_start, Name -- select contract date and name all distributors
FROM Entity, Distributor 
WHERE Entity.ID = Distributor.ID

SELECT Name, COUNT(*) -- number of huawei phones in the warehouse
FROM Mobile, Category
WHERE Mobile.ID = Category.ID
	AND Category.Company = "Huawei"

SELECT Company, COUNT(*) -- group phones by company and select all companies with more than 5 phones
FROM Mobile, Category
WHERE Mobile.ID = Category.ID
GROUP BY Category.Company
HAVING COUNT(*) > 5