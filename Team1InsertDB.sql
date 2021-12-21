--User Data

INSERT INTO USERS
VALUES ('000001', 'Aaron', 'Tylicki', '02-22-2000', '270 W Main St', 'Waynesboro', 'Pennsylvania', '17268', 'aaron.tylicki@spartans.ut.edu', '813-224-2854'),
 ('000002', 'Sebastian', 'Yepez', '10-23-1999', '63420 W Virginia St', 'Miami', 'Ohio', '74923', 'sebastian.yepez@spartans.ut.edu', '813-223-2854'),
 ('000003', 'Jose', 'Russo', '10-25-2002', '63420 W  Lisbon St', 'Benfica', 'New York', '10201', 'jose.russo@spartans.ut.edu', '813-224-2534'),
 ('000004', 'Kadee', 'Nowicky', '11-11-1000', '1 Channelside Drive', 'Tampa', 'Florida', '33606', 'sebastian.yepez@spartans.ut.edu', '813-224-2314'),
 ('000005', 'Natasha', 'Veltri', '10-28-1990', '202 Moscow Ave', 'Los Angeles', 'California', '90210', 'natasha.veltri@spartans.ut.edu', '823-224-2854'),
 ('000006', 'Erin', 'Hixenbaugh', '05-27-1999', '43 Cardinal Drive', 'Louisville', 'Kentucky', '17384', 'erin.hix@spartans.ut.edu', '813-229-2854'),
 ('000007', 'George', 'Souders', '07-11-2000', '612 Barr Rd', 'Waynesboro', 'PA', '17268', 'gs3@rmu.edu', '813-224-1954'),
 ('000008', 'Lionel', 'Messi', '10-23-1989', '10 Paris Way', 'Paris', 'South Carolina', '74533', 'leo@psg.com', '813-224-8888'),
('000009', 'Antonio', 'Valencia', '10-23-1984', '23 United Way', 'Manchester', 'Massachusetts', '43431', 'antonio@spartans.ut.edu', '813-224-2854'),
 ('000010', 'Logan', 'Paul', '12-24-1999', '643 Boxing St', 'Las Vegas', 'Nevada', '74943', 'sebastian.yepez@spartans.ut.edu', '813-224-2854'),
 ('000011', 'Ricky', 'Delgado', '10-23-1999', '634 W Lemon St', 'Miami', 'Ohio', '74923', 'ricky@spartans.ut.edu', '813-994-2834')

 INSERT INTO CLIENT
VALUES ('000001', 'single'),
('000002', 'single'),
('000003', 'married'),
('000004', 'married')

INSERT INTO EMPLOYEE
VALUES('000005', '10/10/2021'),
('000006', '09/09/2020'),
('000007', '07/07/2003'),
('000008', '01/01/2000')

INSERT INTO AGENT  
VALUES
('000007', '11'),
('000008', '09')

INSERT INTO TRAVELER
VALUES ('000003', 'MALE'),
('000004', 'FEMALE'),
('000008', 'MALE'),
('000009', 'MALE'),
('000010', 'MALE'),
('000011', 'MALE')


INSERT INTO SUBSCRIBER
VALUES ('000003', '02/09/2009'),
('000004', '01/22/2021'),
('000008', '04/20/2020'),
('000009', '09/28/2019'),
('000010', '06/22/2021'),
('000011', '11/22/2018')



INSERT INTO PASSPORT 
VALUES ('P000001','000003', 'UNITED STATES','10/10/1999','09/09/2002'),
('P000002', '000004', 'UNITED STATES','10/10/1989','09/09/2004'),
('P000003','000008', 'UNITED STATES','10/10/1988','09/09/2006'),
('P000004','000009', 'UNITED STATE','10/10/1998','09/09/2007'),
('P000005','000010', 'UNITED STATES','10/11/1998','09/09/2008'),
('P000006','000011', 'UNITED STATES','11/10/1998','09/09/2001')

INSERT INTO USERAGENTINTERACTION
VALUES('I100001', '000007', '000004', 3, '12/10/2021', 'Discussion about trip to Paris'),
('I100002', '000007', '000004', 3, '12/11/2021', 'Planning for trip to Paris'),
('I100003', '000007', '000002', 3, '12/12/2021', 'Discussion about trip to London'),
('I100004', '000008', '000001', 3, '12/13/2021', 'Discussion about trip to Manchester'),
('I100005', '000008', '000003', 3, '12/10/2021', 'Discussion about trip to Barcelona'),
('I100006', '000008', '000004', 3, '12/10/2021', 'Discussion about trip to Lisbon')

INSERT INTO REGION
VALUES('R000001', 'North America'),
('R000002', 'Central America'),
('R000003', 'South America'),
('R000004', 'Scandinavia'),
('R000005', 'Western Europe'),
('R000006', 'Eastern Europe'),
('R000007', 'North Africa'),
('R000008', 'Sub-Saharan Africa'),
('R000009', 'Middle East'),
('R000010', 'Central Asia'),
('R000011', 'Eastern Asia'),
('R000012', 'Oceania'),
('R000013', 'Antarctica')

INSERT INTO INTEREST
VALUES('IN00001', 'Beach', 'Sun, sand and coconut water'),
('IN00002', 'Mountains', 'Rocky hills and fresh air'),
('IN00003', 'City', 'Culture, good food and bars'),
('IN00004', 'Snow', 'Snowcones, gloves and scarfs'),
('IN000045', 'Romance', 'Great for Honeymoons!')

INSERT INTO PACKAGE
VALUES('PKG000001', 'Parisian Excursion', 'Air', 'A well rounded trip to Paris', '3 Days'),
('PKG000002', 'New York Excursion', 'Land', 'The best 2 days in NYC', '2 Days'),
('PKG000003', 'A Week in Melbourne', 'Air', 'A week in Melbourne, AUS', '7 Days'),
('PKG000004', 'Barcelona Excursion', 'Air', 'A well rounded trip to Barcelona', '3 Days'),
('PKG000005', 'Quito Weekend', 'Air', 'A weekend in Quito', '3 Days')

INSERT INTO BOOKING
VALUES('B000001', '04/20/2022', '04/22/2022', 'Tampa', '04/22/2021', 2500, '000002', '000007', 'PKG000001'),
('B000002', '04/22/2022', '04/22/2022', 'Tampa', '04/29/2021', 2800, '000003', '000008','PKG000001'),
('B000003', '04/02/2022', '04/22/2022', 'Tampa', '04/25/2021', 2900, '000004', '000008', 'PKG000002'),
('B000004', '04/06/2022', '04/22/2022', 'Tampa', '04/27/2021', 2000, '000002','000007', 'PKG000003'),
('B000005', '04/20/2022', '04/22/2022', 'Tampa', '04/15/2021', 500, '000003', '000007', 'PKG000002')

INSERT INTO TRAVELERBOOKING
VALUES ('000003', 'B000001'),
('000004', 'B000001'),
('000008', 'B000001'),
('000011', 'B000001'),
('000004', 'B000002'),
('000003', 'B000002'),
('000010', 'B000003'),
('000004', 'B000004')

INSERT INTO SUBSCRIBERREGIONPREF
VALUES('R000001','000003'),
('R000002','000004'),
('R000003', '000008'),
('R000004', '000009'),
('R000005', '000010'),
('R000006', '000011'),
('R000007', '000003'),
('R000008', '000003'),
('R000009','000003'),
('R000010', '000011'),
('R000011', '000008'),
('R000012', '000003'),
('R000013', '000010')

INSERT INTO SUBSCRIBERINTEREST
VALUES('IN00001','000003'),
('IN00002','000004'),
('IN00003','000008'),
('IN00004','000009')

INSERT INTO PACKAGEREGION
VALUES('PKG000001', 'R000005'),
('PKG000002', 'R000001'),
('PKG000003', 'R000012'),
('PKG000004', 'R000005'),
('PKG000005', 'R000003')

INSERT INTO PACKAGEINTEREST
VALUES('PKG000001', 'IN00003'),
('PKG000002', 'IN00003'),
('PKG000003', 'IN00003'),
('PKG000004', 'IN00003'),
('PKG000005', 'IN00002')

INSERT INTO PLANNINGSERVICE
VALUES('S000001','Air',100.00,'000001'),
('S000002','Travel not Included',200.00,'000002'),
('S000003','Air',300.00, '000003'),
('S000004','Air',400.00,'000004'),
('S000005','Travel',500.00,'000001')

INSERT INTO HOTEL
VALUES('HOT000001','Hilton','401 W Kennedy','Tampa','USA'),
('HOT000002','Marriott','205 orlando drive','Orlando','USA'),
('HOT000003','Intercontinental','Cherry Avenue 345','London', 'England'),
('HOT000004', 'Ritz','Rua Egas Moniz','Lisbon','Portugal'),
('HOT000005','Fontainebleau','123 Road berry long','Miami','USA'),
('HOT000006','Kangaroo Inn','1233 Kangaroo Ave', 'Melbourne' ,'Australia'),
('HOT000007','Fontainebleau','123 Road berry long','Barcelona','Spain'),
('HOT000008','Fontainebleau Paris','2423 Rue Paris','Paris','France'),
('HOT000009','Hotel du Louvre','23 Rue Louvre','Paris','France')

INSERT INTO HOTELPACKAGE

VALUES('HOT000004','PKG000003','05/06/2021','05/14/2021','2000'),
('HOT000002','PKG000005','10/10/2021','10/18/2021','1800'),
('HOT000003','PKG000003','08/03/2021','08/09/2021','700'),
('HOT000004','PKG000002','02/14/2021','02/15/2021','300'),
('HOT000005','PKG000004','11/10/2021','11/12/2021','550'),
('HOT000008','PKG000001','11/10/2021','11/12/2021','550'),
('HOT000009','PKG000001','11/12/2021','11/15/2021','550')

INSERT INTO HOTELSERVICE(HotelID, ServiceID, CheckInDate, CheckOutDate, HotelPrice)

VALUES('HOT000004','S000001','05/06/2021','05/14/2021',2000),
('HOT000002','S000003','10/10/2021','10/18/2021',1800),
('HOT000003','S000001','08/03/2021','08/09/2021',700),
('HOT000004','S000004','02/14/2021','02/15/2021',300),
('HOT000005','S000002','11/10/2021','11/12/2021',550),
('HOT000008','S000001','11/10/2021','11/12/2021',550),
('HOT000009','S000001','11/12/2021','11/15/2021',550)

INSERT INTO ATTRACTION( AttractionID, AttractionType, AttractionName, AttractionLocation, AttractionPrice, AttractionDescription)

VALUES('ATT000001','Tour', 'Ghost Tour', '431 W Elm St', 230,'Bird watching through specific bird gathering locations'),
('ATT000002','Local Bar', 'MacDintons Soho', '405 S Howard Ave, Tampa, FL', 700,'Local Bar stoppage for expensive drinks and mid-volume music'),
('ATT000003','Tour', 'Historic Tour', '401 W Kennedy Blvd', 40.00, 'historic tour of the town') ,
('ATT000004','Stadium Visit', 'Estadio da Luz Visit', 'Av. Eusébio da Silva Ferreira', 30, 'Complete tour to where dreams are made'),
('ATT000005','Burlesque Show' ,'Diva Royale Drag Queens Show', '1619 E 7th Ave, Tampa, FL 33605', 65, 'Exotic live burlesque show'),
('ATT000006','Tour', 'Tottenham Hotspur Stadium', '782 High Rd, London N17 0BX', 80.00, 'historic tour of the actual best soccer facility in the world(with no trophies since 2009).'),
('ATT000007','Tour' ,'London Museum of Art', '19 E 7th Ave, London S20', 65, 'Tour of the London Museum of Art'),
('ATT000008','Tour' ,'Buckingham Palace', '12 Thames St, London N12', 105, 'Tour of the Queens Crib')


INSERT INTO ATTACTIONSERVICE

VALUES('ATT000004','S000001','05/06/2021','09:00:00'),
('ATT000004','S000002','05/06/2021','12:00:00'),
('ATT000003','S000003','05/06/2021','11:00:00'),
('ATT000002','S000003','05/06/2021','22:00:00')


INSERT INTO ATTRACTIONPACKAGE( AttractionID, PackageID, Date, Time) 

VALUES('ATT000004','PKG000001','05/06/2021','09:00:00'),
('ATT000003','PKG000002','05/06/2021','08:00:00'),
('ATT000004','PKG000004','05/06/2021','20:00:00'),
('ATT000001','PKG000003','05/06/2021','16:00:00')

INSERT INTO FLIGHT( FlightID, FlightDepartureTime, FlightArrivalTime, FlightDate, Airline, FlightNumber, DepartureAirport, ArrivalAirport, FlightCost)

VALUES('FLI000001','09:00:00','10:00:00','05/14/2021','AmericanAirlines','2567791','Charles de Gaulle','Humberto Delgado', 100),
('FLI000002','11:50:00','18:13:00','07/11/2021','TAPAirlines','2982971','Humberto Delgado','Newark Liberty', 700),
('FLI000003','23:05:00','03:40:00','03/22/2021','Spirit','1236812','Tampa International','Newark Liberty',250),
('FLI000004','14:00:00','18:00:00','01/19/2021','Iberia','324567','Newark Liberty','Miami Airport', 145),
('FLI000005','19:25:00','22:30:00','10/26/2021','Spirit','7248533','Miami Airport','Humberto Delgado',900),
('FLI000006','07:05:00','11:15:00','08/03/2021','Fly Emirates','2366678','Charles de Gaulle','Humberto Delgado',50)



INSERT INTO FLIGHSERVICE( FlightID, ServiceID)

VALUES('FLI000001','S000001'),
('FLI000002','S000002'),
('FLI000003','S000003'),
('FLI000004','S000002'),
('FLI000005','S000002')

INSERT INTO FLIGHTPACKAGE(FlightID, PackageID) 

VALUES('FLI000001','PKG000001'),
('FLI000002','PKG000002'),
('FLI000003','PKG000004'),
('FLI000004','PKG000003'),
('FLI000005','PKG000005')

INSERT INTO MEAL( MealID, MealType, MealPrice)

VALUES('MEA000001','Chinese Takeout', 24.00),
('MEA000002','Indian Takeout', 30.00),
('MEA000003','American Takeout',14.00),
('MEA000004','Mexican Takeout', 25.00),
('MEA000005','Outback Steakhouse',24.00),
('MEA000006','Meat Market', 224.00)


INSERT INTO MEALSERVICE( MealID, ServiceID,  MealDate, MealTime)
VALUES('MEA000001','S000004', '05/14/2021','08:00:00'),
('MEA000003','S000003','05/20/2021','09:00:00'),
('MEA000005','S000002','05/30/2021','20:00:00'),
('MEA000006','S000003', '05/23/2021','20:00:00'),
('MEA000002','S000003', '05/10/2021','14:00:00'),
('MEA000006','S000001', '05/14/2021','16:00:00')

INSERT INTO MEALPACKAGE( MealID, PackageID, MealDate, MealTime)

VALUES('MEA000001','PKG000001', '05/16/2021','19:00:00'),
('MEA000003','PKG000002', '05/19/2021','20:00:00'),
('MEA000005','PKG000002', '05/10/2021','15:00:00'),
('MEA000006','PKG000004', '05/1/2021','18:00:00'),
('MEA000002','PKG000003', '05/14/2021','09:00:00'),
('MEA000006','PKG000003', '05/24/2021','09:00:00')

INSERT INTO TRANSPORTATION ( TransportationID, TransportationType, TransportationCompany)

VALUES('TRA000001','BUS','GreyBUS'),
('TRA000002','Plane','American'),
('TRA000003','Train','AsianTrain')

INSERT INTO TRANSPORTATIONSERVICE 
VALUES('TRA000001','S000001','12:00','4:00',1250,'USA','33355 south lemon street','Las Vegas','United States'),
('TRA000002','S000003','12:00','4:00',1250,'USA','33355 east lemon street','Chicago','United States'),
('TRA000003','S000003','12:00','4:00',1250,'USA','3455 north lemon street','Chicago','United States'),
('TRA000001','S000003','12:00','4:00',1250,'USA','3355 narth lemon street','Chicago','United States'),
('TRA000001','S000002','12:00','4:00',1250,'USA','33555 juicy lemon street','Chicago','United States')

INSERT INTO TRANSPORTATIONPACKAGE
VALUES('TRA000001','PKG000001','12:00','5:00',1250,'USA','33355 north kennedy street','Chicago','United States'),
('TRA000002','PKG000002','12:00','6:00',1250,'USA','334355 east lemon street','Chicago','United States'),
('TRA000003','PKG000004','12:00','3:00',1250,'USA','326355 north lemon ave','Chicago','United States'),
('TRA000001','PKG000003','12:00','8:00',1250,'USA','33575 north lemon street','Chicago','United States')