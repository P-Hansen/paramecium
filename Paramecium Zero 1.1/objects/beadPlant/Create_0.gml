/// @description Insert description here

name = "bead plant"
//image_blend = c_green;
image_alpha = 0.6;
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
maxSpeed = 0;
minSpeed = 0;
speed = 0;
hp = 20;
maxHp = irandom_range(60,75);
move_bounce_solid(true);
//steering = 0;
//sightRange = 100;
//sightRangeEnemies = 100;
alarm[1] = 2*room_speed;
growthFlag = false;
finalX = 0;
finalY = 0;
alarm[0] = 80*room_speed;