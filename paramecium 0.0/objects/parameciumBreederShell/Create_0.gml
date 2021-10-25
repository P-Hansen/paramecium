/// @description Insert description here
name = "shell";
image_blend = c_white;//choose(c_white, c_orange, c_yellow);
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
maxSpeed = 5;
minSpeed = 2;
speed = minSpeed;//random_range(2, 4);
hp = 20;
maxHp = 110;
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
sightRange = 75;

myShell = instance_create_depth(x,y,0, shell);