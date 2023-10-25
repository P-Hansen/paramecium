/// @description Insert description here
name = "Seeker";
image_blend = c_orange;//choose(c_white, c_orange, c_yellow);
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);

minSpeed = 1.5;
maxSpeed = 3.5;
speed = minSpeed;//random_range(2, 4);

hp = 20;
maxHp = 85;
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
sightRange = 75;

myTail1 = instance_create_depth(x-48, y, 0, tail2);
myTail2 = instance_create_depth(x-48, y, 0, tail2);
myTail3 = instance_create_depth(x-48, y, 0, tail2);

target = instance_find(foodOrange, irandom_range(0, instance_number(foodOrange)-1 ));
flag = false;

roll = random_range(1,100);
if(roll < 5){
	image_blend = c_white;
	myTail1.image_blend = c_orange;
	myTail2.image_blend = c_orange;
	myTail3.image_blend = c_orange;
	maxHp = maxHp*1.1;
}