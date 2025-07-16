{{ config(materialized='view') }}

SELECT 
    transaction_id,
    account_id,
    transaction_amount,
    transaction_type,
    transaction_date
FROM {{ source('finance', 'transactions') }}