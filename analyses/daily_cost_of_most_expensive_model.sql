select
    date(start_time) as date,
    sum(query_cost) as cost
from dev.dbt_phoebehchgmailcom.dbt_queries
where dbt_node_id = 'model.dbt_snowflake_monitoring.stg_query_history'
group by 1
order by 1 desc
