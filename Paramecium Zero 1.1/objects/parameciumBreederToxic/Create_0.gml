/// @description Insert description here
name = "toxicus";
image_blend = c_teal;//choose(c_white, c_orange, c_yellow);
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
maxSpeed = 2.5;
minSpeed = 1.5;
speed = minSpeed;//random_range(2, 4);
hp = 30;
maxHp = 110;
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
alarm[1] = 1*room_speed;
sightRange = 100;

poison1 = noone;
poison1x = random_range(-8,8);
poison1y = random_range(-8,8);
poison2 = noone;
poison2x = random_range(-8,8);
poison2y = random_range(-8,8);
poison3 = noone;
poison3x = random_range(-8,8);
poison3y = random_range(-8,8);

fired = false;

roll = random_range(1,100);
if(roll < 5){
	image_blend = c_red;
	maxHp = maxHp*1.1;
}