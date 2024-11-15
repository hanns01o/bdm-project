-- HR Staff-- 
#1. List instructors with their mentors
SELECT 
  i.UserID AS Instructor,
  i.MentoredBy,
  u1.Name AS InstructorName,
  u2.Name AS MentorName
FROM 
  Instructor i
  LEFT JOIN User u1 ON i.UserID = u1.UserID
  LEFT JOIN Instructor m ON i.MentoredBy = m.UserID
  LEFT JOIN User u2 ON m.UserID = u2.UserID;
  
-- Marketing Staff --
#2. Find customers with packages expiring within the next 7 days

SELECT 
  u.UserID,
  u.Name AS CustomerName,
  u.Email,
  u.Phone,
  p.PackageDuration,
  py.PaymentDate,
  'Yes' AS SendCollateral
FROM 
  User u
  JOIN Customer c ON u.UserID = c.UserID
  JOIN Payment py ON u.UserID = py.UserID
  JOIN Package p ON py.PackageID = p.PackageID
WHERE 
  u.UserType = 'Customer'
  AND DATE_ADD(py.PaymentDate, 
    INTERVAL CASE 
	  WHEN p.PackageDuration LIKE '%Day%' THEN CAST(REPLACE(p.PackageDuration, ' Day', '') AS UNSIGNED)
      WHEN p.PackageDuration LIKE '%Week%' THEN CAST(REPLACE(p.PackageDuration, ' Week', '') AS UNSIGNED) * 7
      WHEN p.PackageDuration LIKE '%Month%' THEN CAST(REPLACE(p.PackageDuration, ' Month', '') AS UNSIGNED) * 30
    END DAY) 
    BETWEEN '2024-06-20' AND '2024-06-27';


-- Customer --
#3. List all the types and number of classes a customer has taken before

SELECT 
    u.UserID AS CustomerID,
    u.Name AS CustomerName,
    c.ClassName,
    COUNT(DISTINCT c.ClassID) AS ClassesTaken
FROM 
    User u
JOIN 
    Booking_Record br ON U.UserID = br.UserID
JOIN 
    Class c ON br.ClassID = c.ClassID
WHERE 
    u.UserType = 'Customer'
    AND c.Date < '2024-06-20'  -- Only count past classes
GROUP BY 
    u.UserID, c.ClassName
ORDER BY 
    CustomerName, ClassesTaken DESC;
    
-- Internal Customer Management Team --
#4. Identify customers who have booked classes in a specificied period:

SELECT 
    u.UserID,
    u.Name AS CustomerName,
    u.Email,
    br.ClassID,
    c.ClassName,
    c.Date AS ClassDate,
    c.StartTime,
    c.EndTime
FROM 
    Booking_Record br
JOIN 
    User u ON br.UserID = u.UserID
JOIN 
    Class c ON br.ClassID = c.ClassID
WHERE 
    u.UserType = 'Customer'
    AND c.Date >= '2024-06-01'
    AND c.Date <= '2024-06-30'
ORDER BY 
    c.Date, c.StartTime;
    
    
    
