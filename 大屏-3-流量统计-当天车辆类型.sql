	
		SELECT * FROM
(
SELECT
CASE 
	WHEN userType=4 THEN 
	'临时车'
	WHEN userType=2 THEN 
	'错峰车'
	WHEN userType=1 THEN 
	'长租车'
	WHEN userType=3 THEN 
	'预约车'
END as userType,

	count(userType) as count
FROM
	parking_record 
WHERE
	parkCode = 'pd31011500586' 
	AND inTime > CURRENT_DATE ( ) 
	AND outTime IS NULL
	and (userType =4 or userType =2 or userType =1) 
	GROUP BY userType
  	UNION
		SELECT '临时车',0
		UNION
		SELECT '错峰车',0 
		UNION
		SELECT '长租车',0 
		) a GROUP BY userType