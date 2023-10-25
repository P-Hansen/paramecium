/// @description Insert description here
name = "Thorny green"
image_blend = c_green;
image_alpha = 0.7;
image_xscale = 0.1;
image_yscale = 0.1;
direction = random_range(0, 360);
maxSpeed = 1;
minSpeed = 0.5;
speed = minSpeed;//random_range(2, 4);
hp = irandom_range(70,80);
maxHp = random_range(70,80);
move_bounce_solid(true);
steering = 0;
alarm[0] = 3*room_speed;
sightRange = 100;
sightRangeEnemies = 100;
alarm[1] = 2*room_speed;
chloro = instance_create_depth(x, y, 0, Object33);


cilia1 = instance_create_depth(x-48, y, 0, spike);
cilia2 = instance_create_depth(x+48, y, 0, spike);
cilia3 = instance_create_depth(x+48, y, 0, spike);
cilia4 = instance_create_depth(x+48, y, 0, spike);

spikeArray = [cilia1, cilia2, cilia3, cilia4];

for (var i=0; i<array_length_1d(spikeArray); i++) {
	spikeArray[i].image_blend = c_white;
}

roll = random_range(1,100);
if(roll < 5){
	image_blend = c_white;
	cilia1.image_blend = c_green;
	cilia2.image_blend = c_green;
	cilia3.image_blend = c_green;
	cilia4.image_blend = c_green;
	maxHp = maxHp*1.1;
}