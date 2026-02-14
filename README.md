# What-Ive-Fixed-
I found a dataset and decided to make a few improvements to it. If you are wondering which dataset I used, here is the link to the GitHub repository: https://github.com/jordanho1006/sql-tableau-projects/blob/main/Online%20Shopping%20Analytics%20Project/README.md

# Improvments 
1. Corrected common typos and formatting mistakes customers make when entering their location.
2. Improved discount handling so discounts apply correctly regardless of how they are written.
3. Standardized transaction report text formatting to keep reports clean and consistent.
4. Ensured only the first 5 digits are selected to prevent extra customer input errors.
5. Applied the SUBSTRING function to retrieve a targeted section from a larger string of text.
6. Formatted the location and gender text together to create a consistent shipping label design.
7. i set missing numbers to 0 to avoid math errors and keep calculations running smoothly.
8. Fixed When a customer has not made any purchases, the spending amount is displayed as $0 rather than NULL for improved clarity and consistency.
9. Retrieves the first non-null value from the Discount_Pct column in the Customers table by checking the available entries and returning the first one that is not empty.


In this update, I successfully implemented several SQL improvements to enhance stability, accuracy, and transaction safety

10. Fixed divide-by-zero crashes by applying NULLIF() when working with quantity based calculations.
11. Converted decimal values into whole numbers by using CAST() to ensure consistent numeric formatting (e.g., rounding average prices).
12. Added support for real-time timestamping by utilizing GETDATE() for current date and time retrieval.
13. Calculated how many days ago transactions occurred using DATEDIFF() with the Transaction_Date column.
14. Improved database safety by practicing transaction control commands, including:
15. ROLLBACK to undo unwanted changes
16. COMMIT to permanently save valid updates

These changes help ensure cleaner calculations, better date tracking, and more reliable database operations.

ill work on another SQL Dataset In About Two Days
