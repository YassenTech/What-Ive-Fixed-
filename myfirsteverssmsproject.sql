\\\/*so here i changed the datatype to float 
--float basically stores a similar number for example
--if you're height is 170.2 float adds an approximate number
--which would likely be 170
--basically all it does it just saves a number that is very similar but slightly off by a tiny amount you cant see*/
ALTER TABLE dbo.Customers ALTER
COLUMN Avg_Price FLOAT;
ALTER TABLE dbo.Customers ALTER
COLUMN Delivery_Changes FLOAT;
ALTER TABLE dbo.Customers ALTER
COLUMN Online_spend FLOAT;


--fixed typos and mistakes customers make when writing their location
select TRIM(Location) as fixestypos from Customers;


--checked the data type of each column from a table
SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Customers'



/*Makes all coupon codes look like "AIO10 NOTES10 NCA10 SALE30 ELEC30 NE10 BT20 NJ10 OFF20 NJ30 NCA20 NJ20 BT30 AND10 WEMP30 HOU30 ELEC10 WEMP20 BT10 ELEC20 ACC30 AND30 ACC10 AIO20 GC30 NCA30 ACC20 GC10 NOTES30 AIO30 HGEAR30 OFF10 EXTRA30 HGEAR10 SALE20 HOU20 SALE10 EXTRA10 AND20 HGEAR20 HOU10 OFF30 OFF30 NE30 EXTRA20 NOTES20" 
so the discount works regardless of how it was typed*/
select UPPER(Coupon_Code) AS Coupon_Code
from Customers;

--makes everything look the same so the transaction Reports wont be messy
	SELECT LOWER(Location)
	Transaction_ID,Transaction_Date
	from Customers

--selects only the first 5 digits just incase a customer writes too many digits
Select LEFT(CustomerID, 5) AS FirstFiveDigitsCustomerID From Customers

--selects a small part of text from the column named Product_SKU Like Grabbing "CLO" Out of "CLO-GAMINGCHAIR-01"
SELECT SUBSTRING(Product_SKU, 1, 3) 
from Customers;


--So Here I made the text of the location and gender go together to make a design for a shipping label
SELECT CONCAT(Location,Gender) AS SealedGenderAndLocationForShippingLabel from Customers


--when a customer didnt spend money instead of it being NULL its gonna be 0$
Select ISNULL(Online_Spend, 0) As AllNullsInOnlineSpendAreNow0 From Customers

Select ISNULL(Offline_Spend, 0) As AllNullsInOnlineSpendAreNow0 From Customers

select * from Customers

--hides a number so the computer doesnt crash during math
select Online_Spend / NULLIF(Quantity, 0) As AvgPaidPrice from Customers

--uses a specificed database
USE myfirstssmsproject;

select * from Customers

--selects the transaction_ID and transaction_Date From Customers
select Transaction_ID,Transaction_Date from customers

--selects The Transaction_ID that is smaller then 23000
select Transaction_ID From Customers
WHERE Transaction_ID < 23000


--selects the Transaction_ID that is bigger then 23000
select Transaction_ID From Customers
WHERE Transaction_ID > 23000

--selects a specific Number Of Values from a column 
select top 200 CustomerID from customers 

--checks the list of numbers of the specificed column (Discount_Pct) from customers and brings the first one that isnt empty
SELECT discount_pct, COALESCE(Discount_pct, 0) as Discount_backup FROM customers

--so here i fixed the computer from crashing when you try to divide by zero Quantity's
Select Quantity / NULLIF(Quantity, 0) as Stopscomputerfromcrashingwhendividing From Customers

--here i turned the column named (Avg Price) To Turn All The Numbers Into A Whole Number
Select CAST(Avg_Price AS int) From Customers

--asks the computer "What Time Is It Right Now"? Makes it great for timestamping an order or date 
SELECT GETDATE();	
--calculates how long ago an order was placed 
--i did this with the (Transaction_Date) Column
SELECT DATEDIFF(day, Transaction_Date, GETDATE()) as calcuateshowmanydaysagoanorderwasplaced From Customers

--this just undo's the changes youve made
BEGIN TRANSACTION ROLLBACK;

--saves changes you've made
BEGIN TRANSACTION COMMIT;
