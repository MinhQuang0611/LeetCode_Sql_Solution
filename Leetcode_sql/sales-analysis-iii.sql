with cte1 as (
    select distinct product_id 
    from sales 
    where sale_date between '2019-01-01' and '2019-03-31'
), 
cte2 as (   
    select distinct product_id
    from sales
    where sale_date < '2019-01-01' or sale_date > '2019-03-31'
)
select p.product_id, p.product_name from 
product p
join cte1 c1  on c1.product_id = p.product_id
left join cte2 c2  on c2.product_id = p.product_id
where c2.product_id is null