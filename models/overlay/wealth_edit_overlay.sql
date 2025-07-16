{{ config(materialized='table') }}

select
    account_id,
    count(transaction_id) as total_transactions,
    sum(amount) as total_amount,
    max(transaction_date) as last_transaction_date
from {{ ref('int_transaction_overlay') }}
group by account_id