
SELECT 
	DATE_FORMAT( tjDate, '%m-%d' ) AS days,
	ROUND(sum(cashMoney) / 100 , 2 ) AS income,
	'cashMoney' as payType
FROM
	tj_net_monthly_report
WHERE
	(parkCode = 'jd31011400037' or parkCode = 'pd31011500586'  or parkCode = 'pt31010700210' or parkCode = 'hk31010900121' or parkCode = 'JH00490') 
	AND tjDate >= DATE_SUB( CURRENT_DATE ( ), INTERVAL 7 DAY )
	GROUP BY tjDate
	
	union
	
	SELECT 
	DATE_FORMAT( tjDate, '%m-%d' ) AS days,
	ROUND(sum(WXMoney) / 100 , 2 ) AS income,
	'WXMoney' as payType
FROM
	tj_net_monthly_report
WHERE
	(parkCode = 'jd31011400037' or parkCode = 'pd31011500586'  or parkCode = 'pt31010700210' or parkCode = 'hk31010900121' or parkCode = 'JH00490') 
	AND tjDate >= DATE_SUB( CURRENT_DATE ( ), INTERVAL 7 DAY )
	GROUP BY tjDate
	
		union
	
	SELECT 
	DATE_FORMAT( tjDate, '%m-%d' ) AS days,
	ROUND(sum(alipayMoney) / 100 , 2 ) AS income,
	'alipayMoney' as payType
FROM
	tj_net_monthly_report
WHERE
	(parkCode = 'jd31011400037' or parkCode = 'pd31011500586'  or parkCode = 'pt31010700210' or parkCode = 'hk31010900121' or parkCode = 'JH00490') 
	AND tjDate >= DATE_SUB( CURRENT_DATE ( ), INTERVAL 7 DAY )
	GROUP BY tjDate


