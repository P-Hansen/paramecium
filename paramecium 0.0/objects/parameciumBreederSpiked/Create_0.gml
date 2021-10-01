/// @description Insert description here
// You can write your code in this editor
image_blend = make_colour_rgb(121, 5, 171);
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);

minSpeed = 2;
maxSpeed = 4;
speed = minSpeed;//random_range(2, 4);

hp = 20;
maxHp = 100;
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
sightRange = 100;

state = true;

cilia1 = instance_create_depth(x-48, y, 0, spike);
cilia2 = instance_create_depth(x+48, y, 0, spike);
cilia3 = instance_create_depth(x+48, y, 0, spike);
cilia4 = instance_create_depth(x+48, y, 0, spike);
cilia5 = instance_create_depth(x+48, y, 0, spike);
cilia6 = instance_create_depth(x+48, y, 0, spike);
cilia7 = instance_create_depth(x+48, y, 0, spike);
cilia8 = instance_create_depth(x+48, y, 0, spike);
cilia9 = instance_create_depth(x+48, y, 0, spike);
cilia10 = instance_create_depth(x-48, y, 0, spike);
cilia11 = instance_create_depth(x+48, y, 0, spike);
cilia12 = instance_create_depth(x+48, y, 0, spike);
cilia13 = instance_create_depth(x+48, y, 0, spike);
cilia14 = instance_create_depth(x+48, y, 0, spike);
cilia15 = instance_create_depth(x+48, y, 0, spike);
cilia16 = instance_create_depth(x+48, y, 0, spike);

spikeArray = [cilia1, cilia2, cilia3, cilia4, cilia5, cilia6, cilia7, cilia8, cilia9, cilia10, cilia11, cilia12, cilia13, cilia14, cilia15, cilia16];

minSize = 0.2;