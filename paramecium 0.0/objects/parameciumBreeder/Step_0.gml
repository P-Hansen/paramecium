/// @description Insert description here
// You can write your code in this editor

image_xscale = clamp(hp*0.01, 0.2, 100);
image_yscale = clamp(hp*0.01, 0.2, 100);

if (hp >= maxHp) {
	baby = instance_create_depth(x, y, 0, parameciumBreeder);
	baby.hp = maxHp/2;
		roll = random irandom_range(1,10);
	if(roll >= 9) {
		baby.image_blend = choose(c_white, c_orange, c_yellow);
	} else {
		baby.image_blend = image_blend;
	}
	baby = instance_create_depth(x, y, 0, parameciumBreeder);
	baby.hp = maxHp/2;
	roll = random irandom_range(1,10);
	if(roll >= 9) {
		baby.image_blend = choose(c_white, c_orange, c_yellow);
	} else {
		baby.image_blend = image_blend;
	}
	instance_destroy(self);
}

direction += steering;
image_angle = direction;

target = instance_nearest(x,y,foodOrange);
if(instance_exists(target) && point_distance(x, y, target.x, target.y) <= 75) {
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