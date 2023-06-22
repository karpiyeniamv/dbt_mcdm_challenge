with final as
     (
            select *
            from
                   {{ ref('prep_bing')}}
            union all
            select *
            from
                   {{ ref('prep_facebook')}}
            union all
            select *
            from
                   {{ ref('prep_tiktok')}}
            union all
            select *
            from
                   {{ ref('prep_twitter')}}
     )
select
    
     *
from
       final