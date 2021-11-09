/// @description spawn timer


spore = instance_create_depth(room_width+5,random_range(10,room_height-10),0,toxic);
spore.direction = 180;
spore.speed = random_range(1,4);

spore = instance_create_depth(room_width+5,random_range(10,room_height-10),0,toxic);
spore.direction = 180;
spore.speed = random_range(1,4);


alarm[1] = random_range(0.1,1)*room_speed;