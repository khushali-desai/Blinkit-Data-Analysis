
create database blinkit;

show databases;

use blinkit;
select * from store;

#SQL query to show all Item_Identifier
select item_identifier from store;


#3. Count of total Item Identifiers
select count(item_identifier) from store;


#4. Maximum Item Weight
select max(item_weight) from store;


#5. Minimum Item Weight
select min(item_weight) from store;


#6. Average Item Weight
select avg(item_weight) from store;

select count(item_fat_content) from store 
where item_fat_content = 'low fat';

select count(item_fat_content) from store 
where item_fat_content = 'regular';


#9. Maximum MRP
select max(Item_MRP) from Store; 


#10. Minimum MRP
select min(Item_MRP) from Store; 


#11. Items with MRP > 200
select Item_Identifier , Item_Fat_Content ,Item_Type,Item_MRP from Store where Item_MRP>200;


#12. Maximum MRP of Low Fat Items
select max(Item_MRP) from Store where Item_Fat_Content = 'Low Fat';


#13. Minimum MRP of Low Fat Items
select min(Item_MRP) from Store where Item_Fat_Content = 'Low Fat';


#14. Items with MRP between 50 and 100
select * from Store where Item_MRP between 50 and 100;


#15. Unique Item Fat Content Values
select distinct item_fat_content from store;


#16. Unique Item Types
select distinct item_type from store;

select * from store

#17. All Data Ordered by MRP Descending
order by item_mrp desc;

select * from store

#18. All Data Ordered by Sales Ascending
order by item_outlet_sales asc;

select * from store 

#19. All Data Ordered by Item Type
order by item_type asc;

#20. SQL query to show DATA of item_type dairy & Meat
select * from store
where item_type in ('dairy', 'meat');


#21. Unique Outlet Sizes
select distinct outlet_size from store;



#22. Unique Outlet Location Types
select distinct outlet_location_type from store;


#23. Unique Outlet Types
select distinct outlet_type from store;

#23. Show all unique values of Outlet_Type
SELECT DISTINCT Outlet_Type FROM store;

#24. Count of items by Item_Type in descending order
SELECT Item_Type, COUNT(*) AS Item_Count 
FROM store 
GROUP BY Item_Type 
ORDER BY Item_Count DESC;

#25. Count of items by Outlet_Size in ascending order
SELECT Outlet_Size, COUNT(*) AS Item_Count 
FROM store 
GROUP BY Outlet_Size 
ORDER BY Item_Count ASC;

#26. Count of items by Outlet_Type in descending order
SELECT Outlet_Type, COUNT(*) AS Item_Count 
FROM store 
GROUP BY Outlet_Type 
ORDER BY Item_Count DESC;

#27. Count of items by Outlet_Location_Type in descending order
SELECT Outlet_Location_Type, COUNT(*) AS Item_Count 
FROM store 
GROUP BY Outlet_Location_Type 
ORDER BY Item_Count DESC;

#28. Maximum MRP by Item_Type
SELECT Item_Type, MAX(Item_MRP) AS Max_MRP 
FROM store 
GROUP BY Item_Type;

#29. Minimum MRP by Item_Type
SELECT Item_Type, MIN(Item_MRP) AS Min_MRP 
FROM store 
GROUP BY Item_Type;

#30. Minimum MRP by Outlet_Establishment_Year in descending order
SELECT Outlet_Establishment_Year, MIN(Item_MRP) AS Min_MRP 
FROM store 
GROUP BY Outlet_Establishment_Year 
ORDER BY Min_MRP DESC;

#31. Maximum MRP by Outlet_Establishment_Year in descending order
SELECT Outlet_Establishment_Year, MAX(Item_MRP) AS Max_MRP 
FROM store 
GROUP BY Outlet_Establishment_Year 
ORDER BY Max_MRP DESC;

 #32. Average MRP by Outlet_Size in descending order
SELECT Outlet_Size, AVG(Item_MRP) AS Avg_MRP 
FROM store 
GROUP BY Outlet_Size 
ORDER BY Avg_MRP DESC;

#33. Average MRP by Outlet_Type in ascending order
SELECT Outlet_Type, AVG(Item_MRP) AS Avg_MRP 
FROM store 
GROUP BY Outlet_Type 
ORDER BY Avg_MRP ASC;

#34. Maximum MRP by Outlet_Type
SELECT Outlet_Type, MAX(Item_MRP) AS Max_MRP 
FROM store 
GROUP BY Outlet_Type;

#35. Maximum Item_Weight by Item_Type
SELECT Item_Type, MAX(Item_Weight) AS Max_Weight 
FROM store 
GROUP BY Item_Type;

# 36. Maximum Item_Weight by Outlet_Establishment_Year
SELECT Outlet_Establishment_Year, MAX(Item_Weight) AS Max_Weight 
FROM store 
GROUP BY Outlet_Establishment_Year;

 #37. Minimum Item_Weight by Outlet_Type
SELECT Outlet_Type, MIN(Item_Weight) AS Min_Weight 
FROM store 
GROUP BY Outlet_Type;

#38. Average Item_Weight by Outlet_Location_Type in descending order
SELECT Outlet_Location_Type, AVG(Item_Weight) AS Avg_Weight 
FROM store 
GROUP BY Outlet_Location_Type 
ORDER BY Avg_Weight DESC;

-- 39. Maximum Item_Outlet_Sales by Item_Type
SELECT Item_Type, MAX(Item_Outlet_Sales) AS Max_Sales 
FROM store 
GROUP BY Item_Type;

#40. Minimum Item_Outlet_Sales by Item_Type
SELECT Item_Type, MIN(Item_Outlet_Sales) AS Min_Sales 
FROM store 
GROUP BY Item_Type;

#41. Minimum Item_Outlet_Sales by Outlet_Establishment_Year
SELECT Outlet_Establishment_Year, MIN(Item_Outlet_Sales) AS Min_Sales 
FROM store 
GROUP BY Outlet_Establishment_Year;

#42. Maximum Item_Outlet_Sales by Outlet_Establishment_Year in descending order
SELECT Outlet_Establishment_Year, MAX(Item_Outlet_Sales) AS Max_Sales 
FROM store 
GROUP BY Outlet_Establishment_Year 
ORDER BY Max_Sales DESC;

#43. Average Item_Outlet_Sales by Outlet_Size in descending order
SELECT Outlet_Size, AVG(Item_Outlet_Sales) AS Avg_Sales 
FROM store 
GROUP BY Outlet_Size 
ORDER BY Avg_Sales DESC;

#44. Average Item_Outlet_Sales by Outlet_Type
SELECT Outlet_Type, AVG(Item_Outlet_Sales) AS Avg_Sales 
FROM store 
GROUP BY Outlet_Type;

#45. Maximum Item_Outlet_Sales by Outlet_Type
SELECT Outlet_Type, MAX(Item_Outlet_Sales) AS Max_Sales 
FROM store 
GROUP BY Outlet_Type;

#46. Total Item_Outlet_Sales by Item_Type
SELECT Item_Type, SUM(Item_Outlet_Sales) AS Total_Sales 
FROM store 
GROUP BY Item_Type;

#47. Total Item_Outlet_Sales by Item_Fat_Content
SELECT Item_Fat_Content, SUM(Item_Outlet_Sales) AS Total_Sales 
FROM store 
GROUP BY Item_Fat_Content;

#48. Maximum Item_Visibility by Item_Type
SELECT Item_Type, MAX(Item_Visibility) AS Max_Visibility 
FROM store 
GROUP BY Item_Type;

#49. Minimum Item_Visibility by Item_Type
SELECT Item_Type, MIN(Item_Visibility) AS Min_Visibility 
FROM store 
GROUP BY Item_Type;

#50. Total Item_Outlet_Sales by Item_Type WHERE Outlet_Location_Type is 'Tier 1'
SELECT Item_Type, SUM(Item_Outlet_Sales) AS Tier1_Sales 
FROM store 
WHERE Outlet_Location_Type = 'Tier 1' 
GROUP BY Item_Type;

#51. Total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is 'Low Fat' or 'LF'
SELECT Item_Type, SUM(Item_Outlet_Sales) AS LowFat_Sales 
FROM store 
WHERE Item_Fat_Content IN (''Low Fat','LF') 
GROUP BY Item_Type;










