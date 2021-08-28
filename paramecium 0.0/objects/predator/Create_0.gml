/// @description Insert description here
// You can write your code in this editor
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
speed = 2;//random_range(2, 4);
maxSpeed = 7;
hp = 20;
maxHp = 100;
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
image_blend = c_red;