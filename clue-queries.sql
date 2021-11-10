-- first 
SELECT * FROM crime_scene_report WHERE date=20180115 AND city="SQL City" AND type="murder"

--second 
SELECT MAX(address_number) FROM person WHERE address_street_name="Northwestern Dr"

--third 
SELECT * FROM person WHERE name LIKE "Annabel %" AND address_street_name="Franklin Ave"

--fourth
SELECT interview.* FROM interview WHERE person_id IN (14887,16371)

--fifth 
SELECT *
FROM get_fit_now_member as gfnm
INNER JOIN get_fit_now_check_in as gfnci ON gfnci.membership_id=gfnm.id
INNER JOIN person ON gfnm.person_id=person.id
INNER JOIN drivers_license ON drivers_license.id=person.license_id
WHERE gfnci.check_in_date=20180109 AND gfnm.id LIKE "48Z%" AND drivers_license.plate_number LIKE "%H42W%"

--sixth 
SELECT interview.* FROM interview WHERE person_id = 67318

--seventh 
SELECT * FROM drivers_license
JOIN person ON drivers_license.id=person.license_id
JOIN facebook_event_checkin as fec ON person.id=fec.person_id
WHERE drivers_license.car_model="Model S" AND drivers_license.hair_color="red" AND drivers_license.height BETWEEN 65 AND 67 AND fec.event_name="SQL Symphony Concert"

