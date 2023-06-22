{{ config ( materialized='table' ) }}
select
         channel
       ,  case when sum(total_conversions)=0 then 0       
                else sum(spend)/sum(total_conversions) 
                end as lvl1       
       , case when sum(engagements)=0 then 0       
                else sum(spend)/sum(engagements) 
                end as lvl2
       , sum(impressions) as lvl3, 
        case when sum(clicks)=0 then 0       
                else sum(spend)/sum(clicks) 
                end as lvl4
from
         {{ref ('paid_ads')}}
group by
         channel