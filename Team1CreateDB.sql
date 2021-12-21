-- Create tables 

--CREATE DATABASE WanderlustTravelAgency2

CREATE TABLE USERS(
UserID CHAR(6)  PRIMARY KEY,
UserFName varchar(25) NOT NULL,
UserLName varchar(25) NOT NULL,
UserDateOfBirth date NOT NULL,
UserStreetAddress varchar(200) NOT NULL,
UserCity varchar(50) NOT NULL,
UserState varchar(25) NOT NULL,
UserZipCode char(5) NOT NULL,
EmailAddress varchar(50) NOT NULL,
PhoneNumber char(12) NOT NULL,
);

CREATE TABLE CLIENT(
ClientID char(6) PRIMARY KEY,
MaritalStatus varchar(15), 
FOREIGN  KEY(ClientID) REFERENCES USERS(UserID),
);

CREATE TABLE EMPLOYEE(
EmployeeID char(6) PRIMARY KEY,
EmployeeHireDate date NOT NULL,
FOREIGN KEY(EmployeeID) REFERENCES USERS(UserID)
);

CREATE TABLE AGENT(
AgentID char(6) PRIMARY KEY,
AgentComission tinyint NOT NULL,
FOREIGN KEY(AgentID) REFERENCES EMPLOYEE(EmployeeID)
);

CREATE TABLE USERAGENTINTERACTION(
InteractionID char(7) PRIMARY KEY,
AgentID char(6) NOT NULL,
ClientID char(6) NOT NULL,
InteractionTime tinyint NOT NULL,
InteractionDate Date NOT NULL,
InteractionNotes varchar(1000), 
FOREIGN KEY (AgentID) REFERENCES AGENT(AgentID),
FOREIGN KEY (ClientID) REFERENCES CLIENT(ClientID)
);

CREATE TABLE TRAVELER(
TravelerID char(6) PRIMARY KEY,
TravelerGender varchar(15) NOT NULL,
FOREIGN KEY (TravelerID) REFERENCES USERS(UserID)
);


CREATE TABLE PASSPORT(
PassportID char(7) PRIMARY KEY,
TravelerID char(6) NOT NULL,
Country varchar(50) NOT NULL,
IssueDate date NOT NULL,
ExpirationDate date NOT NULL,
FOREIGN KEY(TravelerID) REFERENCES TRAVELER (TravelerID) 
);


CREATE TABLE SUBSCRIBER(
SubscriberID char(6) PRIMARY KEY,
SubscriptionDate date NOT NULL,
FOREIGN KEY(SubscriberID) REFERENCES USERS(UserID)
);
CREATE TABLE REGION(RegionID char(7) PRIMARY KEY,
RegionName varchar(50) NOT NULL,
);
CREATE TABLE PACKAGE(
PackageID char(9) PRIMARY KEY,
PackageName varchar (35) NOT NULL,
TravelType varchar(35) NOT NULL,
Description varchar(1000) NOT NULL,
Duration varchar(35) NOT NULL,

);
CREATE TABLE BOOKING(
BookingID CHAR(7) PRIMARY KEY,
StartDate Date NOT NULL,
EndDate Date NOT NULL, 
DepartureCity varchar(35) NOT NULL, 
BookedDate Date NOT NULL, 
BookedTotal money NOT NULL,
ClientID char(6) NOT NULL, 
AgentID char(6) NOT NULL, 
PackageID char(9) NOT NULL,
FOREIGN KEY (ClientID) references CLIENT(ClientID),
FOREIGN KEY (AgentID) references AGENT(AgentID),
FOREIGN KEY(PackageID) references PACKAGE(PackageID)
);

CREATE TABLE TRAVELERBOOKING(
TravelerID char(6),
BookingID char(7)
PRIMARY KEY (TravelerID, BookingID),
FOREIGN KEY(TravelerID) REFERENCES TRAVELER (TravelerID), 	
FOREIGN KEY(BookingID) REFERENCES BOOKING (BookingID) 
);

CREATE TABLE INTEREST(
InterestID char(8) PRIMARY KEY,
InterestName varchar(50) NOT NULL,
InterestDesc varchar(1000) NOT NULL
);
CREATE TABLE SUBSCRIBERREGIONPREF(
RegionID char(7),
SubscriberID char(6) 
PRIMARY KEY (RegionID, SubscriberID),
FOREIGN KEY (RegionID) references REGION(RegionID),
FOREIGN KEY (SubscriberID) references SUBSCRIBER(SubscriberID)
);
CREATE TABLE SUBSCRIBERINTEREST(
InterestID char(8),
SubscriberID char(6)
PRIMARY KEY (InterestID, SubscriberID)
FOREIGN KEY (InterestID) references INTEREST(InterestID),
FOREIGN KEY (SubscriberID) references SUBSCRIBER(SubscriberID),
);
CREATE TABLE PACKAGEREGION(
PackageID char(9),
RegionID char(7)
PRIMARY KEY (PackageID, RegionID)
FOREIGN KEY(PackageID) REFERENCES PACKAGE (PackageID),
FOREIGN KEY(RegionID) REFERENCES REGION (RegionID) 
);

CREATE TABLE PACKAGEINTEREST(
PackageID char(9), 
InterestID char(8)
PRIMARY KEY(PackageID, InterestID)
FOREIGN KEY(PackageID) REFERENCES PACKAGE (PackageID),
FOREIGN KEY(InterestID) REFERENCES INTEREST (InterestID) 
);
CREATE TABLE PLANNINGSERVICE(
ServiceID char(7) PRIMARY KEY,
TravelType varchar(35) NOT NULL,
ServiceFee money NOT NULL,
ClientID char(6) NOT NULL,
FOREIGN KEY (ClientID) references CLIENT(ClientID)
);
CREATE TABLE HOTEL(
HotelID char(9) PRIMARY KEY,
HotelName varchar(25) NOT NULL,
HotelAddress varchar(200) NOT NULL,
HotelCity varchar(50) NOT NULL,
HotelCountry varchar(25) NOT NULL,
);
CREATE TABLE HOTELPACKAGE(
HotelID char(9) ,
PackageID char(9),
CheckInDate date NOT NULL,
CheckOutDate date NOT NULL,
HotelPrice smallmoney NOT NULL,
PRIMARY KEY (HotelID, PackageID),
FOREIGN KEY (HotelID) references HOTEL(HotelID),
FOREIGN KEY (PackageID) references PACKAGE(PackageID)
);

CREATE TABLE HOTELSERVICE( 
HotelID char(9),
ServiceID char(7),
CheckInDate date NOT NULL,
CheckOutDate date NOT NULL,
HotelPrice smallmoney NOT NULL,
PRIMARY KEY (HotelID, ServiceID),
FOREIGN KEY (HotelID) references HOTEL(HotelID),
FOREIGN KEY (ServiceID) references PLANNINGSERVICE(ServiceID)
);

CREATE TABLE ATTRACTION(
AttractionID char(9) PRIMARY KEY,
AttractionType varchar(100) NOT NULL,	
AttractionName varchar(100) NOT NULL,
AttractionLocation varchar(100) NOT NULL,
AttractionPrice SmallMoney NOT NULL,
AttractionDescription varchar(100) NOT NULL
);

CREATE TABLE  ATTACTIONSERVICE(
AttractionID char(9),
ServiceID char(7) NOT NULL,
Date date NOT NULL,
Time time NOT NULL,
PRIMARY KEY(AttractionID, ServiceID),
FOREIGN KEY (AttractionID) references ATTRACTION(AttractionID),
FOREIGN KEY (ServiceID) references PLANNINGSERVICE(ServiceID)
);

CREATE TABLE ATTRACTIONPACKAGE(
AttractionID char(9),
PackageID char(9) NOT NULL,
Date date NOT NULL,
Time time NOT NULL,
PRIMARY KEY(AttractionID, PackageID),
FOREIGN KEY (AttractionID) references ATTRACTION(AttractionID),
FOREIGN KEY (PackageID) references PACKAGE(PackageID)
);

CREATE TABLE FLIGHT(
FlightID char(9) PRIMARY KEY,
FlightDepartureTime time NOT NULL,	
FlightArrivalTime time NOT NULL,
FlightDate date NOT NULL,	
Airline varchar(100) NOT NULL,
FlightNumber char(9) NOT NULL,	
DepartureAirport varchar(100) NOT NULL,
ArrivalAirport varchar(100) NOT NULL,
FlightCost smallmoney not null
);

CREATE TABLE FLIGHSERVICE(
FlightID char(9),
ServiceID char(7),
PRIMARY KEY (FlightID, ServiceID),
FOREIGN KEY (FlightID) references FLIGHT(FlightID),
FOREIGN KEY (ServiceID) references PLANNINGSERVICE(ServiceID)
);

CREATE TABLE FLIGHTPACKAGE(
FlightID char(9),
PackageID char(9),
PRIMARY KEY (FlightID, PackageID),
FOREIGN KEY (FlightID) references FLIGHT(FlightID),
FOREIGN KEY (PackageID) references PACKAGE(PackageID)
);

CREATE TABLE MEAL(
MealID char(9) PRIMARY KEY,
MealType varchar(1000) NOT NULL,
MealPrice SmallMoney NOT NULL,
);

CREATE TABLE MEALPACKAGE(
MealID char(9),
PackageID char(9),	
MealDate date NOT NULL,
MealTime time NOT NULL,
PRIMARY KEY(MealID, PackageID),
FOREIGN KEY (MealID) references MEAL(MealID),
FOREIGN KEY (PackageID) references PACKAGE(PackageID)
);

CREATE TABLE MEALSERVICE(
MealID char(9),
ServiceID char(7),
MealDate date NOT NULL,
MealTime time NOT NULL,
PRIMARY KEY(MealID, ServiceID),
FOREIGN KEY (MealID) references MEAL(MealID),
FOREIGN KEY (ServiceID) references PLANNINGSERVICE(ServiceID)
);

CREATE TABLE TRANSPORTATION(
TransportationID char(9) PRIMARY KEY,
TransportationType varchar(100) NOT NULL,
TransportationCompany varchar(100) NOT NULL,
);


CREATE TABLE TRANSPORTATIONPACKAGE(
TransportationID char(9),
PackageID char(9),
DepartureDateTime time NOT NULL,
ArrivalDateTime time NOT NULL,
TransportationPrice smallmoney NOT NULL,
DepartureCountry varchar(25) NOT NULL,
ArrivalAddress varchar(200) NOT NULL,
ArrivalCity varchar(50) NOT NULL,
ArrivalCountry varchar(25) NOT NULL,
PRIMARY KEY (TransportationID, PackageID),
FOREIGN KEY (TransportationID) references TRANSPORTATION(TransportationID),
FOREIGN KEY (PackageID) references PACKAGE(PackageID)
);

CREATE TABLE TRANSPORTATIONSERVICE(
TransportationID char(9),
ServiceID char(7),
DepartureDateTime time NOT NULL,
ArrivalDateTime time NOT NULL,
TransportationPrice smallmoney NOT NULL,
DepartureCountry varchar(25) NOT NULL,
ArrivalAddress varchar(200) NOT NULL,
ArrivalCity varchar(50) NOT NULL,
ArrivalCountry varchar(25) NOT NULL,
PRIMARY KEY (TransportationID, ServiceID),
FOREIGN KEY (TransportationID) references TRANSPORTATION(TransportationID),
FOREIGN KEY (ServiceID) references PLANNINGSERVICE(ServiceID)
);