with final as
     (
            select
                   ''   as ad_id
                 , 0    as add_to_cart
                 , 0    as adset_id
                 , ''   as campaign_id
                 , ''   as channel
                 , 0    as clicks
                 , 0    as comments
                 ,''    as creative_id
                 ,'' as date
                 , 0    as engagements
                 , 0    as impressions
                 , 0    as installs
                 , 0    as likes
                 , 0    as link_clicks
                 , ''   as placement_id
                 , 0    as post_click_conversions
                 , 0    as post_view_conversions
                 , 0    as posts
                 , 0    as purchase
                 , 0    as registrations
                 , 0    as revenue
                 , 0    as shares
                 , 0    as spend
                 , 0    as total_conversions
                 , 0    as video_views
            from
                   {{ ref('src_ads_bing_all_data')}}
     )
select *
from
       final
       