with payments as ( 
    
    select * from {{ ref('stg_orders') }} 
    
    ), 
    
    

aggregated as ( 
    
    select sum(order_total) as total_revenue from payments 
    
    
    ) 


select * from aggregated