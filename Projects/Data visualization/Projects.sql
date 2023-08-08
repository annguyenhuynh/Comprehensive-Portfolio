-- Merge data tables into 1
with hotels as (
select * from Projects.dbo.['2018$']
union 
select * from Projects.dbo.['2019$']
union
select * from Projects.dbo.['2020$']) 

select * from hotels
left join dbo.market_segment$
on hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on hotels.meal = meal_cost$.meal


-- The results show that revenue grew from 2018 to 2019, but went down signficantly from 2019 to 2020.
-- From 2019 to 2020, city hotel and resort hotel lost $3million each. 
-- ADR: Average daily rate. This number represents the average rental income paid per occupied room

