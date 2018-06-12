use usairlineflights;
select count(colYear) from flights;


select avg(DepDelay), avg(ArrDelay), origin from flights group by Origin;


select origin, colYear, colMonth, avg(ArrDelay) from flights group by colMonth, Origin;


select city, colYear, colMonth, avg(ArrDelay) from flights join usairports on flights.Origin = usairports.IATA group by Origin, colMonth;


select UniqueCarrier, sum(Cancelled) from flights where Cancelled =1;
select UniqueCarrier, count(*) FROM flights where cancelled = 1 GROUP BY UniqueCarrier;

select FlightNum, Distance from flights order by distance desc limit 10;


select UniqueCarrier, avg(ArrDelay) from flights group by UniqueCarrier HAVING avg(ArrDelay)<10;

select uniqueCarrier, delayedCarriers.avgDelay
from (
	select uniqueCarrier, avg(arrDElay)as avgDelay
    from flights
    group by UniqueCarrier) as delayedCarriers
    where avgDelay<10.0;