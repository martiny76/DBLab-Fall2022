select address as ad, count(user_name) as cnt from cities group by address 
having count(user_name) > 2;