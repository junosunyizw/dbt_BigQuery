with payments as(

    select 
        id as payment_id,
        orderid,
        amount

from `dbt-tutorial.stripe.payment`

)

select * from payments

