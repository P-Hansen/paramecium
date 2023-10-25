/// @description Insert description here
name = "dentem";
image_blend = c_red;//choose(c_white, c_orange, c_yellow);
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
maxSpeed = 4;
minSpeed = 2;
speed = minSpeed;//random_range(2, 4);
hp = 50;
maxHp = 100;
//move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
sightRange = 75;
myHorn1 = instance_create_depth(x+48, y, 0, horn);
myHorn1.owner = self;
//myHorn2 = instance_create_depth(x+44, y, 0, horn);
//myHorn3 = instance_create_depth(x+44, y, 0, horn);
myHorn2 = instance_create_depth(x+48, y, 0, horn);
myHorn2.owner = self;
myHorn3 = instance_create_depth(x+48, y, 0, horn);
myHorn3.owner = self;

roll = random_range(1,100);
if(roll < 5){
	image_blend = c_white;
	myHorn1.image_blend = c_red;
	myHorn2.image_blend = c_red;
	myHorn3.image_blend = c_red;
	maxHp = maxHp*1.1;
}