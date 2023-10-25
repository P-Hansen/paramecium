/// @description Insert description here
name = "Colony"
image_blend = c_green;
image_alpha = 0.7;
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
maxSpeed = 0;
minSpeed = 0;
speed = 0;
hp = 20;
maxHp = 60;
move_bounce_solid(true);
steering = 0;
sightRange = 100;
sightRangeEnemies = 100;
alarm[1] = 2*room_speed;
chloro = instance_create_depth(x, y, 0, Object33);
growthFlag = false;

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