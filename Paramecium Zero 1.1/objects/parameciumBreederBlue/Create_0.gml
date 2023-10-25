/// @description Insert description here
name = "Big blue";
image_blend = c_aqua;//choose(c_white, c_orange, c_yellow);
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);

minSpeed = 1.5;
maxSpeed = 3.5;
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

roll = random_range(1,100);
if(roll < 5){
	image_blend = c_white;
	cilia1.image_blend = c_aqua;
	cilia2.image_blend = c_aqua;
	cilia3.image_blend = c_aqua;
	cilia4.image_blend = c_aqua;
	cilia5.image_blend = c_aqua;
	cilia6.image_blend = c_aqua;
	cilia7.image_blend = c_aqua;
	cilia8.image_blend = c_aqua;
	cilia9.image_blend = c_aqua;
	cilia10.image_blend = c_aqua;
	cilia11.image_blend = c_aqua;
	cilia12.image_blend = c_aqua;
	cilia13.image_blend = c_aqua;
	cilia14.image_blend = c_aqua;
	cilia15.image_blend = c_aqua;
	cilia16.image_blend = c_aqua;
	maxHp = maxHp*1.1;
}