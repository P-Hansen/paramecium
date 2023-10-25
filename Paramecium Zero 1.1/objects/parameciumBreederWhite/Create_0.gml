/// @description Insert description here
name = "paramecium zero"
image_blend = c_white;//choose(c_white, c_orange, c_yellow);
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
maxSpeed = global.whiteSpeed;
minSpeed = global.whiteMinSpeed;
speed = minSpeed;//random_range(2, 4);
hp = 20;
maxHp = global.whiteHp;
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
sightRange = global.whiteRange;

roll = random_range(1,100);
if(roll < 5){
	image_blend = c_dkgray;
	maxHp = maxHp*1.1;
}