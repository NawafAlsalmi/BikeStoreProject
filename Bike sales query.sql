with bike_share as (
 select * from Bike_data.dbo.bike_share_yr_0
  union all
  select * from Bike_data.dbo.bike_share_yr_1
  )

  select 
	   [dteday]
      ,[season]
      ,cost.yr
      ,[hr]
      ,[weekday]
      ,[rider_type]
      ,[riders]
	  ,[price]
	  ,[COGS]
	  ,riders*price as revenue
	  ,riders*price-COGS as profit
  from bike_share bike
  left join Bike_data.dbo.cost_table cost
  on bike.yr = cost.yr
