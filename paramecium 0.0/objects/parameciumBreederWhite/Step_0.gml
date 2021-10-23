/// @description Insert description here
// You can write your code in this editor

image_xscale = clamp(hp*0.01, 0.2, 100);
image_yscale = clamp(hp*0.01, 0.2, 100);

if (hp >= maxHp) {
	roll = random_range(10,10);
	if(roll >= 8) {
		mutant = parameciumBreederGreenBrooding; //choose(parameciumBreederYellow, parameciumBreederBlue, parameciumBreederShell, parameciumBreederSpiked, parameciumBreederVacuum, parameciumBreederGreenBrooding);
		if (mutant == parameciumBreederGreenBrooding) {
			image_xscale = 0.1;
			image_yscale = 0.1;
			baby = instance_create_depth(x+20, y+20, 0, mutant);
		} else {
			baby = instance_create_depth(x, y, 0, mutant);
			baby.hp = maxHp/2;

			baby = instance_create_depth(x, y, 0, parameciumBreederWhite);
			baby.hp = maxHp/2;
		}
	} else {
		baby = instance_create_depth(x, y, 0, parameciumBreederWhite);
		baby.hp = maxHp/2;
		//baby.image_blend = image_blend;
	
		baby = instance_create_depth(x, y, 0, parameciumBreederWhite);
		baby.hp = maxHp/2;
		//baby.image_blend = image_blend;
	}
	instance_destroy(self);
	global.points += 1;
}

direction += steering;
image_angle = direction;

target = instance_nearest(x,y,foodYellow);
if(instance_exists(target) && point_distance(x, y, target.x, target.y) <= sightRange) {
	direction = point_direction(x, y, target.x, target.y);
}

if(x < 0) {
	x = 5;
	direction += 180 + random_range(-20,20);
}
if(x > room_width) {
	x = room_width - 5;
	direction += 180 + random_range(-20,20);
}
if(y < 0) {
	y = 5;
	direction += 180 + random_range(-20,20);
}
if(y > room_height) {
	y = room_height - 5;
	direction += 180 + random_range(-20,20);
}

if (hp <= 0) {
	instance_destroy(self);
}