-- 车位总数
SELECT sum(count) as count from park_info 
WHERE (code = 'jd31011400037' or code = 'pd31011500586'  or code = 'pt31010700210' or code = 'hk31010900121' or code = 'JH00490') and deltag=0


-- 车位使用率
select FLOOR((sum(count)-sum(freeCount))/sum(count)*100) as utilization  from park_info 
WHERE (code = 'jd31011400037' or code = 'pd31011500586'  or code = 'pt31010700210' or code = 'hk31010900121' or code = 'JH00490') and deltag=0



-- test
SELECT code,count,freeCount from park_info 
WHERE (code = 'jd31011400037' or code = 'pd31011500586'  or code = 'pt31010700210' or code = 'hk31010900121' or code = 'JH00490') and deltag=0