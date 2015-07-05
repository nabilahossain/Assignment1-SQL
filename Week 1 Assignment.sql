  Answer1:

Select sum(flight) as "Total Number of Flights" from flights;

  Answer2:

Select carrier as "Airline", sum(flight)as "Total Number of Flights" from flights
Group by carrier order by carrier asc;

  Answer3:

Select distinct carrier as "Airline", sum(flight)as "Total Number of Flights" from flights
Group by carrier order by sum(flight) desc;

  Answer4:

Select carrier as "Airline", sum(flight)as "Total Number of Flights" from flights
Group by carrier order by sum(flight) desc limit 5;

  Answer5:

Select carrier as "Airline", sum(flight)as "Total Number of Flights" from flights
where distance >= 1000 Group by carrier order by sum(flight) desc limit 5;

  Answer6:
My question:
Using the flights database, show the total number of flights the arrival (destination) airport have each month, 
considering only the airports where more than 4892 fights arrives, ordered by greatest to least number of flights.

My query:

Select dest as "Arrival Airport", month as "Month", sum(flight) as "Total Flights Per Month" from flights
where flight > 4892 Group by dest, month order by Sum(flight) desc, month;

