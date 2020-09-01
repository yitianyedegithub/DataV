select ROUND((

SELECT
	count(*)
FROM
	parking_record 
WHERE
	(parkCode = 'jd31011400037' or parkCode = 'pd31011500586'  or parkCode = 'pt31010700210' or parkCode = 'hk31010900121' or parkCode = 'JH00490' )
and inTime >= DATE_SUB(CURRENT_DATE(),INTERVAL 1 DAY) AND outTime is NULL)/(

SELECT sum(count) from park_info where (code = 'jd31011400037' or code = 'pd31011500586'  or code = 'pt31010700210' or code = 'hk31010900121' or code = 'JH00490' ) and deltag=0


)*100,0) as utilization from DUAL

