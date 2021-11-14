/// @description event trigger 8min

instance_create_depth(random_range(0,room_width), random_range(0,room_height),0,choose(superSugarSpawn, toxicWaves, algeaBloom, famine, wormSpawner));

alarm[0] = 480*room_speed;