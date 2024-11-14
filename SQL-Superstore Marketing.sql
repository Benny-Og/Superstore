use Store_Marketing;

select * from superstore_data;

## THE AMOUNT OF PEOPLE THAT SHOP DURING TIME PERIOD

select count(distinct Id) as Tier_1
from superstore_data
where Recency <= 5;
## 150

select count(distinct Id) as Tier_2
from superstore_data 
where Recency between 5 and 10;
##123

select count(distinct Id) as Tier_3
from superstore_data
where Recency between 10 and 20;
##241

select count(distinct Id) as Tier_4 
from superstore_data 
where Recency between 20 and 30;
##266

## THE AVERAGE AGE OF THE TIER CUSTOMERS

select avg(distinct Year_Birth) as Tier_1_Year
from superstore_data 
where Recency <= 5;
## the average age of someone who has been in the last 5 days is 57

select avg(distinct Year_Birth) as Tier_2_Year
from superstore_data 
where Recency between 5 and 10;
## the average age of someone who has been in the last 5-10 days in 56

select avg(distinct Year_Birth) as Tier_3_Year
from superstore_data 
where Recency between 10 and 20;
## the average age of someone who has been in the last 10-20 days is 55

select avg(distinct Year_Birth) as Tier_4_Year
from superstore_data 
where Recency between 20 and 30;
## the average age of someone who has been in the last 20-30 days is 56

## THE AVERAGE EDUCATION OF THE TIER CUSTOMERS

select Education, count(*) as Tier_1_Ed
from superstore_data
where Recency <= 5
group by Education;
## this shows the education achieved by the customers in Tier 1

select Education, count(*) as Tier_2_Ed
from superstore_data
where Recency between 5 and 10
group by Education;
## this shows the education achieved by the customers in Tier 2

select Education, count(*) as Tier_3_Ed
from superstore_data
where Recency between 10 and 20
group by Education;
## this shows the education achieved by the customers in Tier 3

select Education, count(*) as Tier_4_Ed
from superstore_data
where Recency between 20 and 30
group by Education;
## this shows the education achieved by customers in Tier 4

## THE AVERAGE INCOME OF THE TIER CUSTOMERS

select avg(Income) as Tier_1_In
from superstore_data
where Recency <= 5;
## the average income of Tier 1 customers $52,775

select avg(Income) as Tier_2_In
from superstore_data
where Recency between 5 and 10;
## the average income of Tier 2 customers $50964

select avg(Income) as Tier_3_In
from superstore_data
where Recency between 10 and 20;
## the average income of Tier 3 customers $50580

select avg(Income) as Tier_4_In
from superstore_data
where Recency between 20 and 30;
## the average income of Tier 3 customers $55036

## THE AVERAGE NUMBER OF PURCHASES/WEB VISITS BY TIER

select avg(NumStorePurchases) as Tier_1_Pur
from superstore_data
where Recency <= 5;
## the average number of store purchases 5.76
select avg(NumWebVisitsMonth) as Tier_1_Web
from superstore_data
where Recency <=5;
## the average nummber of website visits 5.32

select avg(NumStorePurchases) as Tier_2_Pur
from superstore_data
where Recency between 5 and 10;
## the average number of store purchases 5.77
select avg(NumWebVisitsMonth) as Tier_2_Web
from superstore_data
where Recency between 5 and 10;
## the average nummber of website visits 5.35

select avg(NumStorePurchases) as Tier_3_Pur
from superstore_data
where Recency between 10 and 20;
## the average number of store purchases 5.53
select avg(NumWebVisitsMonth) as Tier_3_Web
from superstore_data
where Recency between 10 and 20;
## the average nummber of website visits 5.46

select avg(NumStorePurchases) as Tier_4_Pur
from superstore_data
where Recency between 20 and 30;
## the average number of store purchases 5.97
select avg(NumWebVisitsMonth) as Tier_4_Web
from superstore_data
where Recency between 20 and 30;
## the average nummber of website visits 5.38

## THE AVERAGE MARITAL STATUS OF TIER CUSTOMERS

select Marital_Status, count(*) as Tier_1_M
from superstore_data
where Recency <= 5
group by Marital_Status;
## this shows the martial status of customers in Tier 1

select Marital_Status, count(*) as Tier_2_M
from superstore_data
where Recency between 5 and 10
group by Marital_Status;
## this shows the martial status of customers in Tier 2

select Marital_Status, count(*) as Tier_3_M
from superstore_data
where Recency between 10 and 20
group by Marital_Status;
## this shows the martial status of customers in Tier 3

select Marital_Status, count(*) as Tier_4_M
from superstore_data
where Recency between 20 and 30
group by Marital_Status;
## this shows the marital status of customers in Tier 4







