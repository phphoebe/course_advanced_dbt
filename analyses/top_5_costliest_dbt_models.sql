with
dbt_queries as (
    select *
    from dev.dbt_phoebehchgmailcom.dbt_queries
),

max_date as (
    select max(date(end_time)) as date
    from dbt_queries
)

select
    dbt_queries.dbt_node_id,
    sum(dbt_queries.query_cost) as total_cost_last_30d,
    total_cost_last_30d*12 as estimated_annual_cost
from dbt_queries
cross join max_date
where
    dbt_queries.start_time >= dateadd('day', -30, max_date.date)
    and dbt_queries.start_time < max_date.date -- don't include partial day of data
group by 1
order by total_cost_last_30d desc
limit 5

/*
DBT_NODE_ID	TOTAL_COST_LAST_30D	ESTIMATED_ANNUAL_COST
	4.898544296	58.782531558
model.dbt_snowflake_monitoring.stg_query_history	1.949804405	23.397652864
model.dbt_snowflake_monitoring.query_history_enriched	0.9850390967	11.820469161
model.dbt_snowflake_monitoring.stg_access_history	0.9423920377	11.308704453
model.dbt_snowflake_monitoring.hourly_spend	0.6996586717	8.39590406
*/
