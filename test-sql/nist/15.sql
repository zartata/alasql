CREATE VIEW METRIC_STATS (ID, MONTH, TEMP_C, RAIN_C) AS 
SELECT ID, 
MONTH, 
(TEMP_F - 32) * 5 /9, 
RAIN_I * 0.3937 
FROM STATS;