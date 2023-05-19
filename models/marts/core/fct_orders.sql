with orders as
(

   select * from {{ ref("stg_orders") }}
),

payments as (
    select * from {{ ref('stg_payments') }}
),
final as 
(
    select 
        orders.order_id,
        payments.payment_id,
        payments.amount
    from orders
    left join payments
    on   orders.order_id=payments.orderid
)
select * from final
