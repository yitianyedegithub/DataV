-- 车位总数
SELECT count from park_info WHERE code='jd31011400037' and deltag=0
-- 车位空余数
select freeCount from park_info WHERE code='jd31011400037' and deltag=0

-- 车位空余数量统计

SELECT

IF(
	
		((
		SELECT
			count 
		FROM
			park_info 
		WHERE
			code = 'jd31011400037' and deltag=0
			)-
			(
		SELECT
			count( * )
		FROM
			parking_record 
		WHERE
			parkCode = 'jd31011400037' 
			AND inTime >= DATE_SUB( CURRENT_DATE ( ), INTERVAL 1 DAY ) 
			AND outTime is NULL
		))>0,((
		SELECT
			count 
		FROM
			park_info 
		WHERE
			code = 'jd31011400037' and deltag=0
			)-
			(
		SELECT
			count( * )
		FROM
			parking_record 
		WHERE
			parkCode = 'jd31011400037' 
			AND inTime >= DATE_SUB( CURRENT_DATE ( ), INTERVAL 1 DAY ) 
			AND outTime is NULL
		)),0) AS freeCount 
	FROM
	DUAL

-- 车位使用率
select FLOOR((count-freeCount)/count*100) as utilization  from park_info WHERE code='jd31011400037' and deltag=0

-- 车位使用率统计

select 
if(
ROUND((

SELECT
	count(*)
FROM
	parking_record 
WHERE
	parkCode = 'jd31011400037' 
and inTime >= DATE_SUB(CURRENT_DATE(),INTERVAL 1 DAY)
and outTime is NULL)/(

SELECT count from park_info where code = 'jd31011400037' and deltag=0


)*100,0)<=100,ROUND((

SELECT
	count(*)
FROM
	parking_record 
WHERE
	parkCode = 'jd31011400037' 
and inTime >= DATE_SUB(CURRENT_DATE(),INTERVAL 1 DAY)
and outTime is NULL)/(

SELECT count from park_info where code = 'jd31011400037' 


)*100,0),100) as utilization from DUAL


