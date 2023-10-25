image_index = 1;
hp = 200
direction = random_range(0,360);
speed = 1;
image_blend = c_white;
i = 100+irandom_range(-50,100);

roll = random_range(1,100);
if(roll < 5){
	image_index = 0;
	hp = hp*1.1;
}