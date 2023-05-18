-- 1
SELECT * FROM facilities;

-- 2
SELECT * FROM bookings;

SELECT * FROM facilities AS f
INNER JOIN bookings AS b 
ON f.facid = b.facid
WHERE b.memid != 0;

-- 3
SELECT facid, name, membercost, monthlymaintenance
FROM facilities
WHERE membercost < monthlymaintenance / 50;

-- 4
SELECT * FROM facilities
WHERE facid IN (1,5);

-- 5
SELECT * FROM members;

SELECT joindate FROM members
ORDER BY joindate DESC
LIMIT 1;

-- 6
SELECT firstname, surname FROM members
WHERE joindate = (SELECT MAX(joindate) FROM members);

-- 7
SELECT facid, COUNT(*) AS slots
FROM bookings
GROUP BY facid
ORDER BY facid;

-- 8
SELECT COUNT(DISTINCT memid) AS total_members
FROM bookings;