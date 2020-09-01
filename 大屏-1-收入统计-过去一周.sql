SELECT 
	DATE_FORMAT( tjDate, '%m-%d' ) AS days,
	ROUND(acutalMoney / 100 , 2 ) AS dailyIncome 


FROM
	tj_income_monthly_report 
WHERE
	parkCode = 'jd31011400037' 
	AND tjDate >= DATE_SUB( CURRENT_DATE ( ), INTERVAL 7 DAY )







/*
SELECT
DATE_FORMAT(payTime,'%m-%d') as dates,
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
	AND payTime >= 	DATE_SUB(CURRENT_DATE ( ),INTERVAL 6 DAY)
	AND payType <> 0
	
	GROUP BY DATE_FORMAT(payTime,'%Y-%m-%d')
	
	*/
	