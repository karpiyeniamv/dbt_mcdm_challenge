with final as
     (
            select
                   cast(ad_id as string) as ad_id
                 , 0                     as add_to_cart
                 , adset_id
                 , campaign_id
                 , channel
                 , clicks
                 , 0 as comments
                 ,'' as creative_id
                 , date
                 , 0    as engagements
                 , imps as impressions
                 , 0    as installs
                 , 0    as likes
                 , 0    as link_clicks
                 , ''   as placement_id
                 , 0    as post_click_conversions
                 , 0    as post_view_conversions
                 , 0    as posts
                 , 0    as purchase
                 , 0    as registrations
                 , revenue
                 , 0 as shares
                 , spend
                 , conv as total_conversions
                 , 0    as video_views
            from
                   {{ ref('src_ads_bing_all_data')}}
     )
select *
from
       final