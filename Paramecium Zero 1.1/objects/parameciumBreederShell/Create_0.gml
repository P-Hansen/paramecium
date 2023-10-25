/// @description Insert description here
name = "Shelled";
image_blend = c_gray;
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
maxSpeed = 3;
minSpeed = 1.5;
speed = minSpeed;//random_range(2, 4);
hp = 20;
maxHp = 110;
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
sightRange = 75;

myShell = instance_create_depth(x,y,0, shell);
myShell.image_blend = make_colour_rgb(0 , 84, 166);

roll = random_range(1,100);
if(roll < 5){
	image_blend = make_colour_rgb(0 , 84, 166);
	myShell.image_blend = c_gray;
	maxHp = maxHp*1.1;
}