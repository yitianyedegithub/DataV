-- 错峰
select count(*) as sNum from  stagger_peak_parking_sale_rec where endTime>NOW() and parkingCode='jd31011400037'
-- 月卡
select count(*) as lNum from  long_rent_sale where endTime>NOW() and parkingId='jd31011400037'
-- 固定
select count(*) as fNum from  park_fixed_vehicle where endTime>NOW() and parkCode='jd31011400037'