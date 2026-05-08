풀이 1
select *
from FOOD_PRODUCT
order by price DESC
limit 1;
---
풀이 2
select *
from FOOD_PRODUCT
where price = (
    select MAX(price)
    from FOOD_PRODUCT
);