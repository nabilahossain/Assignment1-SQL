  Answer1:

Select count(flight) as "Total Number of Flights" from flights;

  Answer2:

Select carrier as "Airline", count(flight)as "Total Number of Flights" from flights
Group by carrier order by carrier asc;

  Answer3:

Select distinct carrier as "Airline", count(flight)as "Total Number of Flights" from flights
Group by carrier order by count(flight) desc;

  Answer4:

Select carrier as "Airline", count(flight)as "Total Number of Flights" from flights
Group by carrier order by count(flight) desc limit 5;

  Answer5:

Select carrier as "Airline", count(flight)as "Total Number of Flights" from flights
where distance >= 1000 Group by carrier order by count(flight) desc limit 5;

  Answer6:

My question:
Using the flights database, show the total number of flights the arrival (destination) airport have the first day of each month, 
ordered by greatest to least number of flights each month.

My query:

Select dest as "Arrival Airport", month as "Month", count(flight) as "Total Flights Per Month" from flights
where day = 1 Group by dest, month order by month asc, count(flight) desc;


