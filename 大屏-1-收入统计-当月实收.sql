SELECT
	IF
	(
		ROUND( SUM( actualCharge ) / 100, 2 ) > 0,
		ROUND( SUM( actualCharge ) / 100, 2 ),
		0 
	) AS monthTotal 
FROM
	charge_record 
WHERE
	parkCode = 'jd31011400037' 
	AND DATE_FORMAT( payTime, '%Y-%m' ) =DATE_FORMAT( now(), '%Y-%m' )