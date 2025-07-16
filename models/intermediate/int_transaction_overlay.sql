{{ config(materialized='view') }}

select
    transaction_id,
    account_id,
    transaction_amount,
    transaction_date,
    case when transaction_amount > 100000 then 'HIGH_VALUE' else 'NORMAL' end as transaction_type
from {{ ref('stg_transactions') }}