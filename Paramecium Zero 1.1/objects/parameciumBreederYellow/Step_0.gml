/// @description Insert description here
// You can write your code in this editor

image_xscale = clamp(hp*0.01, 0.2, 100);
image_yscale = clamp(hp*0.01, 0.2, 100);

if (hp >= maxHp) {
	roll = random_range(1,10);
	if(roll >= 9) {
		baby = instance_create_depth(x, y, 0, choose(parameciumBreeder3Tails,parameciumBreeder2Tails));
	} else {
		baby = instance_create_depth(x, y, 0, parameciumBreederYellow);
	}
	baby.hp = maxHp/2.5;
	roll = random_range(1,10);
	if(roll >= 9) {
		baby = instance_create_depth(x, y, 0, choose(parameciumBreederYellow));
	} else {
		baby = instance_create_depth(x, y, 0, parameciumBreederYellow);
	}
	baby.hp = maxHp/2.5;

	hp = maxHp/2.5;
	global.points += 1;
}

direction += steering;
image_angle = direction;

targetOrange = instance_nearest(x,y,foodOrange);
targetWhite = instance_nearest(x,y,sugar);
if (instance_exists(targetWhite) && point_distance(x, y, targetWhite.x, targetWhite.y) <= sightRange) {
	direction = point_direction(x, y, targetWhite.x, targetWhite.y);
} else if (instance_exists(targetOrange) && point_distance(x, y, targetOrange.x, targetOrange.y) <= sightRange) {
	direction = point_direction(x, y, targetOrange.x, targetOrange.y);
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