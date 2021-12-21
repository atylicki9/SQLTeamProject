# SQLTeamProject
Objective
Apply data and information management theory and concepts to design and build a database for an organization in a group of 4-5 students. Students will study and model organizational information requirements, and design, build, and use a SQL Server database.

This project contains 3 files. One for Creating the Database, one for Inserting Test Data into the Database, and One for our select Queries. I coded all of the select queries and parts of the Create/Insert Statements. Enjoy!

Read Below for the Case Description

Case Description
Jamila and Kate are recent college graduates who traveled around the world for a year after college. During their travels they learned a lot about travel planning, discovered beautiful must-see locations and made many connections around the world. Upon returning home, they decided to open a travel agency that specializes in all-inclusive tour packages. Their vision is to share their love of travel and their mission to assist others in arranging memorable vacations. They research and plan all tours themselves and take no more than 15 travelers in each group. They also can offer individualized travel planning services for independent vacations.
Your team’s task is to help Jamila and Kate in setting up a database to support the operations of their new travel agency. To help you understand travel agency business, you should visit some travel agency websites. You can peruse www.gate1travel.com/; https://www.oattravel.com/ or your favorite travel agency. You can also search the Internet to identify other travel agencies and learn about products and services that they offer. It will help you better understand the business requirements of this case if you learn about how tour packages are sold and what components are typically included.
Clients
Jamila and Kate have a website where they advertise their tours. They also use social media to tell the world about their trips and recruit potential clients. They send a bi-weekly email newsletter to clients and subscribers. In their Wanderlust database they want to track not only current clients, but also any potential clients that either make an inquiry or subscribe to a mailing list. For subscribers they currently track their first and last name, email address, the date when the subscriber joined the email list and their geographic travel preferences (North America; Mexico; the Caribbean & Latin America; South America; Europe; Africa; Asia and Oceania) and vacation interests (family, history, cities, romantic getaway, beach etc.). For clients (and prospective clients) they also want to track client’s names and contact information such as mailing address, email address and phone number. For every client they also want to capture gender, date of birth, marital status and travel interests. Each client can potentially have multiple travel interests, or none. Clients can be added to the database even before they purchase a trip or travel planning services from the travel agency.
Travelers
Clients can travel with their families or friends. Every traveler will need to be properly tracked since airline tickets and visa should be secured for every traveler. Names of the travelers, their contact details, dates of birth, gender and passport details should be stored (passport number, country issuing passport, issue and expiration dates).
Vacation packages
Jamila and Kate developed 10 different tour packages that take travelers to an international destination for 5 to 15 days. All packages can be purchased as ‘air+land’ (i.e. airfare to destination and vacation at the destination) package or as ‘land only’ (vacation at destination) package. Each tour package has a name, country (or countries) to be visited, duration in days, brief description, itinerary and specifics for transportation, hotels, attractions and meals. Vacations are categorized based on geographic destination (North America; Mexico; the Caribbean & Latin America; South America; Europe; Africa; Asia and Oceania) and travel interests (family, history, cities, romantic getaway, beach etc.). Each vacation package is only for one geographic destination. Some vacation may fall into multiple interest categories (i.e. beach and family).
Since the packages are all inclusive the database should track details about the hotels that are included in each vacation package. Usually, the travelers will stay in several hotels in different locations during the trip. To keep the small group together, the entire group stays at the same hotel during the tour (i.e. clients cannot select their own hotel if they purchase a package and travel as part of the group).
Vacation packages also include activities and attractions. There are both included and optional activities in each package. For example, a city tour may already be included with a visit to a particular city, while a dinner river cruise may be optional and could be purchased separately. The travel agency needs to track the details and price of such optional activities, so they can offer these to the clients.
For ‘air+land’ vacations details about the flights should also be stored. Typical flight details include departure dates and times, airports of origin and destination, airline and flight numbers.
Bookings
Each tour package has a specific start and end dates and depart from a specific US city. When booking their vacation clients can add on an airfare from the most convenient city in US to the gateway city from where the tour departs or they can purchase ‘land only’ package. The bookings can be done individually for each client, or a client can book a vacation for several travelers (for example, their family). As mentioned earlier details of every traveler should be tracked and it is the travelers who go on vacations (not clients).
Travel Planning Services
In addition to offering vacation packages, Jamila and Kate can also design a vacation for a client. Each client can purchase either vacation packages or travel planning services or both. Travel planning services include but are not limited to transportation, hotels, entertainment, attractions, private tour guides and meals. The Wanderlust Travel agency charges a fee for the travel planning service in addition to the cost of the booked hotels, airfares, attractions, entertainment that the client selects.
Customized travel planning involves individualized approach and as such requires a consultation meeting or phone call with the travel agent. Sometimes several such consultations are necessary. Jamila and Kate would like to be able to keep dates, times and notes of such consultations in the database. Also, they want to be able to add to the database all the services and products that the client ends up selecting for their custom vacation, so they can generate a final invoice.
Travel Agents
Jamila and Kate both are busy developing tour packages and recruiting new clients. They hired two travel agents to help them handle client inquiries and sales. Details of these and any other employees also need to be tracked in the database. Since the travel agents work on commission, Jamila and Kate also want to track all bookings associated with each travel agent, as well as any consultations or client interactions that the travel agents have.
As your team examines these requirements, there may be additional processes that you decide to implement. Modifications are encouraged as long as they are properly documented. If you makeassumptions about the data or business processes, you should document these assumptions. For questions or clarifications regarding all case requirements your team should contact your professor.
Your database implementation at a minimum should be able to add, update and delete data described above. Finally, your database must support all report requirements identified below (do not miss these as these are critical to your implementation).

SELECT Query Requirements
To facilitate the business processes in the travel agency, your team should prepare SQL queries to generate data for the following:
1. A list of clients who purchased a certain vacation package (for example, all clients who purchased a vacation to France)
2. A list of travelers who are going on a certain trip (for example, all travelers who are going on a 8 day Paris trip that leaves on March 8).
3. A list of all vacation packages of a certain type or to a certain geographic destination (for example, all vacation packages to Africa, or all romantic vacation packages)
4. An invoice listing all travel planning services and products purchased by a certain client for a certain custom trip.
5. A list of bookings for a travel agent over a specified period of time (for example November 2021) and/or overall.
6. A list in of available trips for certain dates displaying the name of the vacation package, brief description, departure and arrival dates, departure city and price.
7. A list of all hotels used for a specific vacation package and their full addresses (including country). You should display the name of the package as well.
8. A list of available additional tours or services that can be purchased for a certain vacation package or destination
9. A list of all subscribers with their names and email addresses who are interested in a certain type of vacation (for example, everyone who likes cities vacations, so they can be contacted about a new ‘cities’ package).
10. A list of all travelers departing in a certain month (for example November 2021) showing the names of the travelers, vacation package purchase, and departure and return dates.
Queries 11 through 14. Four other queries to generate reports that your team specifies and creates. Each query must use at least two tables. Provide a description of the report (see examples above), SQL query script to generate the data for the report and a print out of the results.
