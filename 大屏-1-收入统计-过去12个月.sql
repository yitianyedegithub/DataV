SELECT
	DATE_FORMAT( tjDate, '%Y-%m' ) AS months,
	ROUND( sum( acutalMoney / 100 ), 2 ) AS monthlyIncome 
FROM
	tj_income_monthly_report 
WHERE
	parkCode = 'jd31011400037'
	AND DATE_FORMAT( tjDate, '%Y-%m' ) >= DATE_FORMAT( DATE_SUB( CURRENT_DATE ( ), INTERVAL 12 MONTH ), '%Y-%m' ) 
	AND DATE_FORMAT( tjDate, '%Y-%m' ) < DATE_FORMAT( CURRENT_DATE ( ), '%Y-%m' )	
GROUP BY
	DATE_FORMAT( tjDate, '%Y-%m' ) 
	
/*test
SELECT
	* 
FROM
	tj_income_monthly_report 
WHERE
	parkCode = 'jd31011400037' 
	AND DATE_FORMAT( tjDate, '%Y-%m' ) >= DATE_FORMAT( DATE_SUB( CURRENT_DATE ( ), INTERVAL 2 MONTH ), '%Y-%m' ) 
	AND DATE_FORMAT( tjDate, '%Y-%m' ) < DATE_FORMAT( CURRENT_DATE ( ), '%Y-%m' )
	
	*/