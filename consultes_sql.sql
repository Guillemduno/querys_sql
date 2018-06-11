
select count(colYear) from flights;


select avg(DepDelay), avg(ArrDelay), origin from flights group by Origin;


select origin, colYear, colMonth, (ArrDelay) from flights group by colMonth, Origin;


select city, colYear, colMonth, (ArrDelay) from flights join usairports on flights.Origin = usairports.IATA group by Origin, colMonth;


select UniqueCarrier, sum(Cancelled) from flights where Cancelled =1;

select FlightNum, Distance from flights order by distance desc limit 10;


select UniqueCarrier, avg(ArrDelay) from flights WHERE Cancelled = 0 HAVING avg(ArrDelay)>10;