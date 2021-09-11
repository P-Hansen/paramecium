/// @description Insert description here
// You can write your code in this editor

image_xscale = clamp(hp*0.01, 0.2, 100);
image_yscale = clamp(hp*0.01, 0.2, 100);

if (hp >= maxHp) {
	baby = instance_create_depth(x, y, 0, parameciumBreederGreen);
	baby.hp = maxHp/3;
	baby = instance_create_depth(x, y, 0, parameciumBreederGreen);
	baby.hp = maxHp/3;
	baby = instance_create_depth(x, y, 0, parameciumBreederGreen);
	baby.hp = maxHp/3;
	instance_destroy(self);
}

direction += steering;
image_angle = direction;

target = instance_nearest(x,y,sugar);
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

chloro.x = x;
chloro.y = y;
chloro.image_xscale = image_xscale;
chloro.image_yscale = image_yscale;