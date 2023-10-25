/// @description event trigger 5min

instance_create_depth(random_range(0,room_width), random_range(0,room_height),0,choose(
	superSugarSpawn,
	toxicWaves,
	algeaBloom,
	famine,
	wormSpawner,
	feast,
	coral,
	migration,
	predators,
	sugarShortage,
	stringOfPearls,
	ropeFronds
));

roll = random_range(1,100);
if(roll >= 95) {
	alarm[0] = 1;
} else {
	alarm[0] = 300*room_speed;
}