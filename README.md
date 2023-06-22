# How to add data from new ad platforms into MCDM
- add source csv file into seeds folder in the dbt Cloud
- To build the seed for the new source, run dbt seed in the dbt Cloud console
- create new file prep_*new source*.sql in /models/prep/
- copy structure from prep_template.sql
- modify new prep_*new source*.sql accordingly source, new source file and MCDM data
- add next text to paid_ads.sql:
```
union all
            select *
            from
                   {{ ref('prep_*new source*')}}
                   ```
- run dbt run in the dbt Cloud console
- Refresh data in Looker report