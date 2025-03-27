use Bookings;
SELECT * FROM dbo.cleaned_data;

-- 1. Total revenue per booking type


SELECT Booking_Type, round(SUM(Price),2) AS Total_Revenue
FROM dbo.cleaned_data
GROUP BY Booking_Type
ORDER BY Total_Revenue DESC; 


-- 2. Most popular facilities
SELECT Facility, COUNT(*) AS Booking_Count
FROM dbo.cleaned_data
WHERE Facility IS NOT NULL
GROUP BY Facility
ORDER BY Booking_Count DESC;



-- 3. Top earning services
SELECT "Service_Name", SUM(Price) AS Total_Revenue
FROM dbo.cleaned_data
GROUP BY "Service_Name"
ORDER BY Total_Revenue DESC; 


-- 4. Peak booking hours
SELECT "Time_Slot", COUNT(*) AS Booking_Count
FROM dbo.cleaned_data
WHERE "Time_Slot" IS NOT NULL
GROUP BY "Time_Slot"
ORDER BY Booking_Count DESC; 


-- 5. Monthly revenue trend
SELECT FORMAT([Booking_Date], 'yyyy-MM') AS Month, SUM(Price) AS Monthly_Revenue
FROM dbo.cleaned_data
GROUP BY FORMAT([Booking_Date], 'yyyy-MM')
ORDER BY Month;