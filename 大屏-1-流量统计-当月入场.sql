SELECT
count( * ) AS monthTotal 
FROM
	parking_record 
WHERE
	parkCode = 'jd31011400037' 
	AND DATE_FORMAT( inTime, '%m' ) = DATE_FORMAT( now( ), '%m' )