SELECT
    flights.aircraft_code,
    FindMaxBookedTickets(flights.aircraft_code)
FROM
    flights
WHERE
    flights.arrival_airport = "VKO"