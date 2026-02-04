
SELECT CONCAT_WS('_', 'Some', NULL, 'Other');


SELECT 
    CONCAT_WS('_', name, location, power, 'Other') AS Name_substation,
    SEC_TO_TIME(hrs * 3600 + min * 60) AS Time_Travel
FROM powerunits;


SELECT 
    id,
    name,
    ADDTIME(
        NOW(),
        SEC_TO_TIME(hrs * 3600 + min * 60)
    ) AS travel_time
FROM powerunits;
