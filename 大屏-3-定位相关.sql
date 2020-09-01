-- 这个是定位

select longitude,latitude from park_info WHERE (code = 'jd31011400037' or code = 'pd31011500586'  or code = 'pt31010700210' or code = 'hk31010900121' or code = 'JH00490') AND deltag=0

-- 这个是散点图


SELECT
	longitude,
	latitude,
	name,
	1 AS style,
	CONCAT('<a href=\"https://datav.aliyuncs.com/share/b3d29b825721d66d3345f2bc48cedcf0?id=',code,'\">点击进入场库大屏</a>') as url
FROM
	park_info 
WHERE
	( CODE = 'jd31011400037' OR CODE = 'pd31011500586' OR CODE = 'pt31010700210' OR CODE = 'hk31010900121' OR CODE = 'JH00490' ) and deltag=0