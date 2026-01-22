create table payment(
	customer_id int primary key,
    payment_id int unique ,
    amount int,
    order_id DECIMAL(10,2)
) ;

insert into payment (customer_id, payment_id,amount, order_id)
value
(1, 101, 500, 1001.00),
(2, 102, 750, 1002.00),
(3, 103, 1200, 1003.00),
(4, 104, 300, 1004.00),
(5, 105, 950, 1005.00),
(6, 106, 400, 1006.00),
(7, 107, 800, 1007.00);


select
    customer_id as c_id,
    payment_id as product_id,
    amount as amount,
    order_id as o_number,
    amount*12 as anual_cost
    
from payment;

create table order_pick(
payment_id int ,
order_id decimal(10,2)
);

insert into order_pick (payment_id, order_id)
select payment_id, order_id
from payment;

select * from order_pick

