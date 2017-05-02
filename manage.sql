-- add restaurant
select @id := (max(Restaurant_ID) + 1)
from Restaurant_info

insert into Restaurant_info values(@id, input_name, input_address, input3_phone, input_deliver, input_price, input_rating, _input_web)



--update menu price

--get dish_id
select @d_id := Dish_ID
from Dish_info
where Dish_Name = input_dishName

--get restaurant id
select @r_id := Restaurant_ID
from Restaurant_info
where Restaurant_Name = input_restName

--update
update Menu
set Price = input_price
where Restaurant_ID = @r_id and Dish_ID = @d_id




--delete menu 

--get dish_id
select @d_id := Dish_ID
from Dish_info
where Dish_Name = input_dishName

--get restaurant id
select @r_id := Restaurant_ID
from Restaurant_info
where Restaurant_Name = input_restName

--update
delete from Menu
where Restaurant_ID = @r_id and Dish_ID = @d_id


