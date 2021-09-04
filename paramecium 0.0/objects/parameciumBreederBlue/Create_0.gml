/// @description Insert description here
// You can write your code in this editor
image_blend = c_aqua;//choose(c_white, c_orange, c_yellow);
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);

minSpeed = 1;
maxSpeed = 3;
speed = minSpeed;//random_range(2, 4);

hp = 20;
maxHp = 150;
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
sightRange = 150;