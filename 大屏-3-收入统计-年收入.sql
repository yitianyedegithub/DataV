SELECT
	ROUND( sum( acutalMoney / 1000000 ), 0 ) AS yearTotal 
FROM
	tj_income_monthly_report 
WHERE
	(parkCode = 'jd31011400037' or parkCode = 'pd31011500586'  or parkCode = 'pt31010700210' or parkCode = 'hk31010900121' or parkCode = 'JH00490')
	AND DATE_FORMAT( tjDate, '%Y' ) = DATE_FORMAT( CURRENT_DATE ( ), '%Y' ) 
