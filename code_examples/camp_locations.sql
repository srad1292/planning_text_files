select distinct on (cl.camp_vehicle)
	cv.*, cl.*
from
	camp_vehicle as cv
inner join camp_location as cl on cv.camp_vehicle = cl.camp_vehicle
where cl.is_current is true
and cv.admin in (3, 4, 8, 10)
order by cl.camp_vehicle, cl.created_on DESC;



select 
cv.*, cl.*
from camp_vehicle as cv 
inner join camp_location as cl on cl.camp_vehicle = cv.camp_vehicle
where cl.is_current is true and cv.admin in (3, 4, 8, 10);
