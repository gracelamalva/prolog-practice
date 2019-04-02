%The following 3 can be changed for different answers

%expert system to find thermostat setting at workplace.
% expert rules

% If it's saturday or sunday it's the weekend

weekend:-day(saturday);day(sunday).

% If it's not the weekend or a holiday, it's a workday.
%workday :- day\=weekend, day\=holidays.

workday :- not(weekend), not(holidays).

% Fridays in August are holidays

holidays :- day(friday), month(august).

% Business hours are on workdays from 9 to 5

business_hours:-workday,time(X),X>=9,X=<17. %24 hour time, midnight=0

% The office is closed outside of business hours
%closed :- weekend;holidays, time(X), X<9,X>17.
%
closed :- not(business_hours).
% Summer is the months of June, July and August, fall - September, October, and November, winter - December, January, and

% February, spring - March, April, and May.

summer:-month(june);month(july);month(august).

fall :- month(september);month(october);month(november).

winter :- month(december);month(january);month(february).

spring :- month(march);month(april);month(may).




% The thermostat setting in spring and fall, during business hours should be 70

setting(X):- spring;fall,business_hours,X=70.

% The thermostat setting in spring and fall, when the office is closed should be 50

setting(X):- spring;fall,closed ,X=50.

% The thermostat setting in winter, during business hours should be 68

setting(X):- winter, business_hours, X=68.

% The thermostat setting in winter, when the office is closed should be 45

setting(X):- winter,closed ,X=45.

% The thermostat setting in summer, during business hours should be 74

setting(X):- summer,business_hours,X=74.

% The thermostat setting in summer, when the office is closed should be 85

setting(X):- summer,closed ,X=85.

month(august).
day(friday).
time(11).

