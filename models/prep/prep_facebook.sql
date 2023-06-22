with final as
     (
            select
                   cast(ad_id as string) as ad_id
                 , add_to_cart
                 , adset_id
                 , campaign_id
                 , channel
                 , clicks
                 , comments
                 , cast (creative_id as string) as creative_id
                 , date
                 , views + clicks_2 as engagements
                 , impressions
                 , 0    as installs
                 , likes
                 , inline_link_clicks   as link_clicks
                 , ''   as placement_id
                 , clicks_2    as post_click_conversions
                 , views_2    as post_view_conversions
                 , 0    as posts
                 , purchase
                 , complete_registration   as registrations
                 , 0 as revenue
                 , 0 as shares
                 , spend
                 , purchase as total_conversions
                 , 0    as video_views
            from
                   {{ ref('src_ads_creative_facebook_all_data')}}
     )
select *
from
       final