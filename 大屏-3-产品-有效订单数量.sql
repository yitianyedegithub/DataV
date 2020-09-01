-- 错峰
select count(*) as sNum from  stagger_peak_parking_sale_rec 
where endTime>NOW() 
and (parkingCode = 'jd31011400037' or parkingCode = 'pd31011500586'  or parkingCode = 'pt31010700210' or parkingCode = 'hk31010900121' or parkingCode = 'JH00490')

-- 月卡
select count(*) as lNum from  long_rent_sale where endTime>NOW() 
and (parkingId = 'jd31011400037' or parkingId = 'pd31011500586'  or parkingId = 'pt31010700210' or parkingId = 'hk31010900121' or parkingId = 'JH00490')

-- 固定
select count(*) as fNum from  park_fixed_vehicle where endTime>NOW() and parkCode='jd31011400037'