/// @description Insert description here
// You can write your code in this editor
image_blend = c_green;//choose(c_white, c_orange, c_yellow);
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
maxSpeed = 2;
minSpeed = 2;
speed = minSpeed;//random_range(2, 4);
hp = 60;
maxHp = random_range(60,80);
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
sightRange = 100;
sightRangeEnemies = 100;
alarm[1] = 2*room_speed;
chloro = instance_create_depth(x, y, 0, Object33);