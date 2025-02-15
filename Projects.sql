WITH hotels AS (
select * from [dbo].['2018$']
union
select * from [dbo].['2019$']
union
select * from [dbo].['2020$']
)
select * from hotels
Left join market_segment$
on hotels.market_segment = market_segment$.market_segment

left join meal_cost$
on meal_cost$.meal=hotels.meal