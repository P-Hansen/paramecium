/// @description Insert description here

name = "bead plant"
//image_blend = c_green;
image_index = 3;
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
//steering = 0;
//sightRange = 100;
//sightRangeEnemies = 100;
alarm[1] = 2*room_speed;
alarm[0] = 80*room_speed;
growthFlag = false;
finalX = x;
finalY = y;