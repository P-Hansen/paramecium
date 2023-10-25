/// @description Insert description here
name = "yellowtail";
image_blend = c_yellow;//choose(c_white, c_orange, c_yellow);
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);

minSpeed = 5;
maxSpeed = 7;
speed = minSpeed;//random_range(2, 4);

hp = 20;
maxHp = 80;
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
sightRange = 75;

myTail = instance_create_depth(x-48, y, 0, tail);
myTail.image_blend = c_yellow;

roll = random_range(1,100);
if(roll < 5){
	image_blend = c_aqua;
	myTail.image_blend = c_aqua;
	maxHp = maxHp*1.1;
}