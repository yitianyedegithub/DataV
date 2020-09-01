SELECT
	DATE_FORMAT( p.payTime, '%Y-%m-%d %H:%i:%s' ) AS payTime,
	p.parkName,
	p.lpn,
CASE
		
		WHEN p.payType = 1 THEN
		'现金' 
		WHEN p.payType = 2 THEN
		'微信支付' 
		WHEN p.payType = 3 THEN
		'支付宝' 
    else
		'现金'
	END AS payType,
	ROUND(p.actualCharge/100,2) as actualCharge
FROM
	charge_record p 
WHERE
	parkCode = 'jd31011400037' 
ORDER BY
	p.payTime DESC 
	LIMIT 30