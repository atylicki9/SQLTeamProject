--SELECT Query Requirements
--To facilitate the business processes in the travel agency, your team should prepare SQL queries to generate data for the following:
--1. A list of clients who purchased a certain vacation package (for example, all clients who purchased a vacation to France)
SELECT b.ClientID, 
b.BookingID,
p.PackageName,
r.RegionName
FROM Booking b
JOIN Package p
ON b.PackageID = p.PackageID
JOIN PackageRegion pr
ON p.PackageID = pr.PackageID
JOIN Region r
ON r.RegionID = pr.RegionID
WHERE r.RegionID = 'R000005';

--2. A list of travelers who are going on a certain trip (for example, all travelers who are going on a 8 day Paris trip that leaves on March 8).
SELECT tb.BookingID,
u.UserFName,
u.UserLName,
p.PackageName,
p.Duration,
b.StartDate
FROM TravelerBooking tb
JOIN Booking b
ON b.BookingID = tb.BookingID
JOIN Traveler t
ON tb.TravelerID = t.TravelerID
JOIN Users u
ON u.UserID = t.TravelerID
JOIN Package p
ON b.PackageID = p.PackageID
WHERE b.BookingID = 'B000001';

--3. A list of all vacation packages of a certain type or to a certain geographic destination (for example, all vacation packages to Africa, or all romantic vacation packages)

--Type

SELECT p.PackageName,
i.InterestName
FROM Package p
JOIN PackageInterest pi
ON p.PackageID =pi.PackageID
JOIN Interest i
ON pi.InterestID =i.InterestID
WHERE i.InterestName like '%City%';

--region
SELECT p.PackageName,
r.RegionName
FROM Package p
JOIN PackageRegion pr
ON p.PackageID =pr.PackageID
JOIN Region r
ON pr.RegionID =r.RegionID
WHERE r.RegionName like '%Western Europe%';

--4. An invoice listing all travel planning services and products purchased by a certain client for a certain custom trip.
SELECT c.ClientID,
ps.ServiceID,
ps.ServiceFee,
a.AttractionName,
a.AttractionPrice
FROM PlanningService ps
JOIN Client c
ON ps.ClientID = c.ClientID
JOIN AttactionService ats
ON ps.ServiceID = ats.ServiceID
JOIN Attraction a 
ON a.AttractionID = ats.AttractionID
WHERE c.ClientID = '000001'
UNION
SELECT c.ClientID,
ps.ServiceID,
ps.ServiceFee,
h.HotelName,
hs.HotelPrice
FROM PlanningService ps
JOIN Client c
ON ps.ClientID = c.ClientID
JOIN HotelService hs
ON ps.ServiceID = hs.ServiceID
JOIN Hotel h
ON h.HotelID = hs.HotelID
WHERE c.ClientID = '000001'
UNION
SELECT c.ClientID,
ps.ServiceID,
ps.ServiceFee,
f.FlightNumber,
f.FlightCost
FROM PlanningService ps
JOIN Client c
ON ps.ClientID = c.ClientID
JOIN FlighService fs
ON ps.ServiceID = fs.ServiceID
JOIN Flight f
ON f.FlightID = fs.FlightID
WHERE c.ClientID = '000001'
UNION
SELECT c.ClientID,
ps.ServiceID,
ps.ServiceFee,
m.MealType,
m.MealPrice
FROM PlanningService ps
JOIN Client c
ON ps.ClientID = c.ClientID
JOIN MealService ms
ON ps.ServiceID = ms.ServiceID
JOIN Meal m
ON m.MealID = ms.MealID
WHERE c.ClientID = '000001'
UNION
SELECT c.ClientID,
ps.ServiceID,
ps.ServiceFee,
t.TransportationCompany,
ts.TransportationPrice
FROM PlanningService ps
JOIN Client c
ON ps.ClientID = c.ClientID
JOIN TransportationService ts
ON ps.ServiceID = ts.ServiceID
JOIN Transportation t 
ON t.TransportationID = ts.TransportationID
WHERE c.ClientID = '000001';

--5. A list of bookings for a travel agent over a specified period of time (for example November 2021) and/or overall.
SELECT a.AgentID,
u.UserFName,
u.UserLName,
b.BookingID,
b.BookedDate
FROM Agent a
JOIN Booking b
On a.AgentID = b.AgentID
JOIN Employee e
On e.EmployeeID = a.AgentID
JOIN Users u
On e.EmployeeID = u.UserID
WHERE( b.BookedDate BETWEEN '2021-04-1' and '2021-04-30') and u.UserFName like '%George%';

--6. A list of available trips for certain dates displaying the name of the vacation package, brief description, departure and arrival dates, departure city and price.
SELECT p.PackageName,
p.Description,
b.StartDate as Departure,
b.EndDate as ReturnDate,
b.DepartureCity,
b.BookedTotal as Price
FROM Booking b
JOIN Package p
ON b.PackageID = p.PackageID
Where StartDate between '2022-04-1' and'2022-04-30';

--7. A list of all hotels used for a specific vacation package and their full addresses (including country). You should display the name of the package as well.
SELECT p.PackageName,
h.HotelName,
h.HotelAddress,
h.HotelCity,
h.HotelCountry
FROM Hotel h
JOIN HotelPackage hp
ON h.HotelID = hp.HotelID
JOIN Package p
ON hp.PackageID = p.PackageID
Where p.PackageID = 'PKG000001';

--8. A list of available additional tours or services that can be purchased for a certain vacation package or destination
SELECT  AttractionName,
AttractionDescription,
AttractionLocation,
AttractionType,
AttractionPrice
FROM Attraction
WHERE  AttractionType like '%tour%' and AttractionLocation like '%london%';

--9. A list of all subscribers with their names and email addresses who are interested in a certain type of vacation (for example, everyone who likes cities vacations, so they can be contacted about a new ‘cities’ package).
SELECT u.UserFName,
u.UserLName,
u.EmailAddress
FROM Users u
JOIN Subscriber s
ON u.UserID = s.SubscriberID
JOIN SubscriberInterest si
ON s.SubscriberID = si.SubscriberID
JOIN Interest i
On i.InterestID = si.InterestID
Where i.InterestName = 'City';

--10. A list of all travelers departing in a certain month (for example November 2021) showing the names of the travelers, vacation package purchase, and departure and return dates.
SELECT u.UserFName,
u.UserLName,
p.PackageName,
b.StartDate as 'End Date',
b.EndDate as 'Return Date'
FROM Users u
JOIN Traveler t
ON u.UserID = t.TravelerID
JOIN TravelerBooking tb
ON t.TravelerID = tb.TravelerID
JOIN Booking b
ON b.BookingID = tb.BookingID
JOIN Package p 
ON p.PackageID = b.PackageID
Where StartDate between '2022-04-1' and'2022-04-30';

--11. A list of all subscribers with their names and email addresses who are interested in a certain region for vacation: 
SELECT u.UserFName,
u.UserLName,
u.EmailAddress
FROM Users u
JOIN Subscriber s
ON u.UserID = s.SubscriberID
JOIN SubscriberRegionPref sr
ON s.SubscriberID = sr.SubscriberID
JOIN Region r
On r.RegionID = sr.RegionID
Where r.RegionName like '%europe%';

--12. Identify the Commission of an agent for a single booking

SELECT a.AgentID,
u.UserFName,
u.UserLName,
b.BookingID,
a.AgentComission,
b.BookedTotal,
(b.BookedTotal *(AgentComission))/100 as Commission
FROM Booking b
JOIN Agent a
On a.AgentID = b.AgentID
JOIN Employee e
On e.EmployeeID = a.AgentID
JOIN Users u
On e.EmployeeID = u.UserID
WHERE BookingID ='B000001';

--13. Identify the Total Commission of an Agent for 2021

SELECT a.AgentID,
u.UserFName,
u.UserLName,
AgentComission,
(SUM(b.BookedTotal)*(AgentComission))/100 as Commission
FROM Booking b
JOIN Agent a
On a.AgentID = b.AgentID
JOIN Employee e
On e.EmployeeID = a.AgentID
JOIN Users u
On e.EmployeeID = u.UserID
WHERE a.AgentID = '000007' AND YEAR(b.BookedDate) = '2021'
GROUP BY u.UserFName, u.UserLName, a.AgentID, AgentComission;

--14. Identify Total Revenue of the Company made for each Package all time

SELECT p.PackageName,
SUM(b.BookedTotal) as 'All Time Revenue'
FROM Package p 
JOIN Booking b
ON p.PackageID =b.PackageID
GROUP BY p.PackageName;