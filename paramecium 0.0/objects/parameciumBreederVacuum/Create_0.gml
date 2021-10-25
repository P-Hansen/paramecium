/// @description Insert description here
name = "vacuum";
image_blend = c_yellow;//choose(c_white, c_orange, c_yellow);
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
maxSpeed = 1.5;
minSpeed = 0.5;
speed = 0;//random_range(minSpeed, maxSpeed);
hp = 30;
maxHp = 90;
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
sightRange = 250;

myVacuumArea = instance_create_depth(x-48, y, 10, vacuumArea);