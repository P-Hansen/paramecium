/// @description Insert description here
// You can write your code in this editor

image_xscale = clamp(hp*0.01, 0.2, 100);
image_yscale = clamp(hp*0.01, 0.2, 100);

if (hp >= maxHp) {
	offsetX = x+lengthdir_x(-40*(hp*0.01),direction)
	offsetY = y+lengthdir_y(-40*(hp*0.01),direction)
	baby = instance_create_depth(offsetX, offsetY, 0, parameciumBreederVacuum);
	hp -= 20;
	global.points += 1;
}

direction += steering;
image_angle = direction;

target = instance_nearest(x,y,foodParentClass);
if(instance_exists(target) && point_distance(x, y, target.x, target.y) <= sightRange) {
	targetDirection = point_direction(x, y, target.x, target.y);
	if (targetDirection - direction > 1) {
	direction += 1;
	} else {
	direction -= 1;
	}
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