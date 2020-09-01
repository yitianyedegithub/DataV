-- 当日总收入
SELECT
IF
	(
		ROUND( SUM( actualCharge ) / 100, 2 ) > 0,
		ROUND( SUM( actualCharge ) / 100, 2 ),
		0 
	) AS totalToday 
FROM
	charge_record 
WHERE
	parkCode = 'jd31011400037' 
	AND payTime >= CURRENT_DATE ( ) 
	AND payType <> 0
	

-- 当日电子支付
SELECT
IF
	(
		ROUND( SUM( actualCharge ) / 100, 2 ) > 0,
		ROUND( SUM( actualCharge ) / 100, 2 ),
		0 
	) AS onlineToday 
FROM
	charge_record 
WHERE
	parkCode = 'jd31011400037' 
	AND payTime >= CURRENT_DATE ( ) 
	AND payType <> 0 
	AND payType <> 1


-- 当日现金收入
SELECT
IF
	(
		ROUND( SUM( actualCharge ) / 100, 2 ) > 0,
		ROUND( SUM( actualCharge ) / 100, 2 ),
		0 
	) AS cashToday 
FROM
	charge_record 
WHERE
	parkCode = 'jd31011400037' 
	AND payTime >= CURRENT_DATE ( )
	AND payType = 1
