/// @description event trigger 6min

instance_create_depth(random_range(0,room_width), random_range(0,room_height),0,choose(superSugarSpawn, toxicWaves, algeaBloom, famine, wormSpawner, feast));

alarm[0] = 360*room_speed;