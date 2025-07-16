{{ config(materialized='view') }}

select
    id as transaction_id,
    account_id,
    amount,
    transaction_date
from {{ source('finance', 'transactions') }}