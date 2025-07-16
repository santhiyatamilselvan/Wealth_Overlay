{{ config(materialized='view') }}

select
    transaction_id,
    account_id,
    amount,
    transaction_date,
    case when amount > 100000 then 'HIGH_VALUE' else 'NORMAL' end as transaction_type
from {{ ref('stg_transactions') }}