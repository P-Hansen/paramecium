/// @description event trigger 10min

instance_create_depth(random_range(0,room_width), random_range(0,room_height),0,choose(superSugarSpawn, toxicWaves, algeaBloom, famine));

alarm[0] = 600*room_speed;