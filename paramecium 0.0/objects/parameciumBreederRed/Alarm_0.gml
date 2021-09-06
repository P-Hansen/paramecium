/// @description Insert description here
// You can write your code in this editor

steering = choose(-0.5, -1, 0.5, 1, 0, 0);
alarm[0] = random_range(1,4)*room_speed;
if (instance_exists(myHorn1) && instance_exists(myHorn2) && instance_exists(myHorn3) ) {
	speed = clamp(speed+1, minSpeed, maxSpeed);
} else {
	speed = clamp(speed-1, minSpeed, maxSpeed);
}

hp -= 5;

if (!instance_exists(myHorn1)){
	myHorn1 = instance_create_depth(x+48, y, 0, horn);
	myHorn1.owner = self;
} else if (!instance_exists(myHorn2)){
	myHorn2 = instance_create_depth(x+48, y, 0, horn);
	myHorn2.owner = self;
} else if (!instance_exists(myHorn3)){
	myHorn3 = instance_create_depth(x+48, y, 0, horn);
	myHorn3.owner = self;
}