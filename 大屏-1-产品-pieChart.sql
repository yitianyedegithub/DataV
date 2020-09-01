SELECT
	'错峰' AS pType,
	count( * ) AS count 
FROM
	stagger_peak_parking_sale_rec 
WHERE
	parkingCode = 'jd31011400037' 
	AND DATE_FORMAT( createTime, '%Y-%m' ) = DATE_FORMAT( NOW( ), '%Y-%m' ) UNION
SELECT
	'长租' AS NAME,
	COUNT( * ) AS count 
FROM
	long_rent_sale 
WHERE
	parkingId = 'jd31011400037' 
	AND DATE_FORMAT( buyTime, '%Y-%m' ) = DATE_FORMAT( NOW( ), '%Y-%m' )