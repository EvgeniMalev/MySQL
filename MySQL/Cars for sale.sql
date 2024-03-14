-- Select parameters of all cars from the list
SELECT `car_name`, `model_name`, `engine_type` FROM `cars`
ORDER BY `car_id`;

-- Choose similar cars within certain criteria
SELECT `car_name`, `model_name`, `engine_type` FROM `cars`
WHERE `horse_power` BETWEEN 150 AND 200
AND `price` BETWEEN 12000 AND 25000
ORDER BY `car_id`;
