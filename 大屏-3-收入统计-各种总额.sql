-- 昨天和今天的营业总额
SELECT ROUND(SUM(total)/1000000,2) as total FROM(
SELECT
	SUM(acutalMoney) AS total
FROM
	tj_income_monthly_report 
WHERE
	( parkCode = 'jd31011400037' OR parkCode = 'pd31011500586' OR parkCode = 'pt31010700210' OR parkCode = 'hk31010900121' OR parkCode = 'JH00490' ) 
	AND tjDate = DATE_SUB( CURRENT_DATE ( ), INTERVAL 1 DAY ) UNION
SELECT
	sum( actualCharge ) AS total
FROM
	charge_record 
WHERE
	( parkCode = 'jd31011400037' OR parkCode = 'pd31011500586' OR parkCode = 'pt31010700210' OR parkCode = 'hk31010900121' OR parkCode = 'JH00490' ) 
	AND payTime >= CURRENT_DATE ( ) 
	AND payType <> 0 
) tmp



-- 过去的7天营业总额
SELECT
	ROUND( SUM( acutalMoney ) / 1000000, 2 ) AS total 
FROM
	tj_net_monthly_report 
WHERE
	( parkCode = 'jd31011400037' OR parkCode = 'pd31011500586' OR parkCode = 'pt31010700210' OR parkCode = 'hk31010900121' OR parkCode = 'JH00490' ) 
	AND tjDate >= DATE_SUB( CURRENT_DATE ( ), INTERVAL 7 DAY ) 
	
	
	-- 过去12个月的营业总额
SELECT
	ROUND( SUM( acutalMoney ) / 1000000, 2 ) AS total 
FROM
	tj_income_monthly_report 
WHERE
	( parkCode = 'jd31011400037' OR parkCode = 'pd31011500586' OR parkCode = 'pt31010700210' OR parkCode = 'hk31010900121' OR parkCode = 'JH00490' ) 
	AND DATE_FORMAT( tjDate, '%Y-%m' ) >= DATE_FORMAT( DATE_SUB( CURRENT_DATE ( ), INTERVAL 12 MONTH ), '%Y-%m' ) 
	AND DATE_FORMAT( tjDate, '%Y-%m' ) < DATE_FORMAT( CURRENT_DATE ( ), '%Y-%m' )