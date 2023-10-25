/// @description Insert description here
name = "toxicus veru";
image_blend = c_olive;//choose(c_white, c_orange, c_yellow);
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
maxSpeed = 3;
minSpeed = 2;
speed = minSpeed;//random_range(2, 4);
hp = 30;
maxHp = 110;
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
alarm[1] = 1*room_speed;
sightRange = 100;
//ammo = 1;
//fireFlag = false;
poison1 = noone;
poison2 = noone;
poison3 = noone;
poison4 = noone;
poison5 = noone;
fired = false;

roll = random_range(1,100);
if(roll < 5){
	image_blend = c_red;
	maxHp = maxHp*1.1;
}