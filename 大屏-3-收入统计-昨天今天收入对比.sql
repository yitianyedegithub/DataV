SELECT
	parkName,
	acutalMoney AS income,
	'yesterday' AS compare 
FROM
	tj_income_monthly_report 
WHERE
	( parkCode = 'jd31011400037' OR parkCode = 'pd31011500586' OR parkCode = 'pt31010700210' OR parkCode = 'hk31010900121' OR parkCode = 'JH00490' ) 
	AND tjDate = DATE_SUB( CURRENT_DATE ( ), INTERVAL 1 DAY ) UNION
SELECT
	parkName,
	sum( actualCharge ) AS income,
	'today' AS compare 
FROM
	charge_record 
WHERE
	( parkCode = 'jd31011400037' OR parkCode = 'pd31011500586' OR parkCode = 'pt31010700210' OR parkCode = 'hk31010900121' OR parkCode = 'JH00490' ) 
	AND payTime >= CURRENT_DATE ( ) 
	AND payType <> 0 
GROUP BY
	parkCode