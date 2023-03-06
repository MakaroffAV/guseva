CREATE OR REPLACE Function FindMaxBookedTickets
    (planeCode IN varchar2)
    RETURN number
IS
    bookedTicketsNum number;

    cursor c1 is

    SELECT
        MAX(COUNT(tickets.book_ref))
    FROM
        tickets
    LEFT JOIN ticket_flights ON
        tickets.ticket_no = ticket_flights.ticket_no
    LEFT JOIN flights ON
        ticket_flights.flight_id = flights.flight_id
    GROUP BY 
        flights.aircraft_code
    HAVING
        flights.aircraft_code = planeCode;

BEGIN
    open  c1;
    fetch c1 into bookedTicketsNum;
    close c1;
RETURN bookedTicketsNum;

END;