Create database Phone;
select count(*) from phone_specs;

select * from phone_specs;

select brand, count(*) as Total_count
from phone_specs
group by brand;

select phone_name , price_inr 
from phone_specs
where price_inr = (select max(price_inr) from phone_specs);

select min(launch_date) from phone_specs;

select brand,phone_name
from phone_specs
group by brand, phone_name;

select phone_name,brand, price_inr, ram, storage,battery,fast_charging  from phone_specs
where price_inr > 10000 and price_inr < 20000
order by price_inr
desc;


select phone_name, price_inr
from phone_specs
order by price_inr;

select phone_name, price_inr
from phone_specs
where price_inr < 12000
order by price_inr;

select phone_name, price_inr
from phone_specs
where price_inr > 20000
order by price_inr;

select * from phone_specs
where brand = 'Samsung';

select phone_name, price_inr
from phone_specs
where price_inr < 15000
order by price_inr;


select phone_name, price_inr
from phone_specs
order by price_inr
desc limit 5;

select phone_name, price_inr
from phone_specs
order by price_inr
asc limit 5;

select phone_name,brand, price_inr, ram, storage,battery,fast_charging  from phone_specs
where price_inr > 10000 and price_inr < 20000
order by price_inr;

select phone_name , ram from phone_specs
where ram like '8 GB';

select round(avg(price_inr),2) as Average_Price_of_All_Phone
from phone_specs;

select max(price_inr) as Maximum_price 
from phone_specs;

select min(price_inr) as Minimum_price 
from phone_specs;

select count(phone_name) as Total_number_of_Phones
from phone_specs;

select brand , count(*) as Total_phones
from phone_specs
group by brand
order by Count(*);

select brand , round(avg(price_inr),2) as Average_price
from phone_specs
group by brand
order by Average_price;

select brand , round(min(price_inr),2) as Minimum_price
from phone_specs
group by brand
order by Minimum_price;

select brand, count(*) as Total_phones
from phone_specs
where price_inr < 12000
group by brand;

select brand , round(avg(price_inr),2) as avg_price from phone_specs
group by brand
having avg(price_inr) > 20000;

select brand, count(*) as Total 
from phone_specs
group by brand
order by count(*) 
desc limit 1;

select phone_name, price_inr
from phone_specs
where price_inr = (select max(price_inr) from phone_specs);

select phone_name, price_inr
from phone_specs
where price_inr > (select avg(price_inr) from phone_specs)
order by price_inr;


