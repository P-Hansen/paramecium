/// @description Insert description here
name = "Slime trailer"
image_blend = c_white;
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
maxSpeed = 2.5;
minSpeed = 1.5;
speed = minSpeed;//random_range(2, 4);
hp = 20;
maxHp = 110;
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
alarm[1] = 0.1*room_speed;
sightRange = global.whiteRange;

roll = random_range(1,100);
if(roll < 5){
	image_index = 1;
	maxHp = maxHp*1.1;
}