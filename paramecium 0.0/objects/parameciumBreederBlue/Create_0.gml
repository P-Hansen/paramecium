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

cilia1 = instance_create_depth(x-48, y, 0, cilia);
cilia2 = instance_create_depth(x+48, y, 0, cilia);
cilia3 = instance_create_depth(x+48, y, 0, cilia);
cilia4 = instance_create_depth(x+48, y, 0, cilia);
cilia5 = instance_create_depth(x+48, y, 0, cilia);
cilia6 = instance_create_depth(x+48, y, 0, cilia);
cilia7 = instance_create_depth(x+48, y, 0, cilia);
cilia8 = instance_create_depth(x+48, y, 0, cilia);
cilia9 = instance_create_depth(x+48, y, 0, cilia);
cilia10 = instance_create_depth(x-48, y, 0, cilia);
cilia11 = instance_create_depth(x+48, y, 0, cilia);
cilia12 = instance_create_depth(x+48, y, 0, cilia);
cilia13 = instance_create_depth(x+48, y, 0, cilia);
cilia14 = instance_create_depth(x+48, y, 0, cilia);
cilia15 = instance_create_depth(x+48, y, 0, cilia);
cilia16 = instance_create_depth(x+48, y, 0, cilia);