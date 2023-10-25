/// @description Insert description here
name = "Green Brooder"
image_blend = c_green;
image_alpha = 0.7;
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
maxSpeed = 2.5;
minSpeed = 1.5;
speed = minSpeed;//random_range(2, 4);
hp = 70;
maxHp = random_range(40,120);
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
alarm[1] = 1*room_speed;
alarm[2] = 3*room_speed;
sightRange = 100;
//ammo = 1;
//fireFlag = false;
poison1 = noone;
poison2 = noone;
poison3 = noone;
poison4 = noone;
poison5 = noone;
fired = false;
//chloro = instance_create_depth(x, y, 0, chloroplast);
X2 = random_range(1,10);
Y2 = random_range(1,10);
X3 = random_range(1,10);
Y3 = random_range(1,10);
X4 = random_range(1,10);
Y4 = random_range(1,10);
X5 = random_range(1,10);
Y5 = random_range(1,10);

roll = random_range(1,100);
if(roll < 5){
	image_blend = c_lime;
	maxHp = maxHp*1.1;
}