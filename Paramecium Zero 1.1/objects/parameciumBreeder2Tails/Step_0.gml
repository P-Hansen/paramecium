/// @description Insert description here
// You can write your code in this editor

image_xscale = clamp(hp*0.01, 0.2, 100);
image_yscale = clamp(hp*0.01, 0.2, 100);

if (hp >= maxHp) {
	roll = random_range(1,10);
	if(roll >= 9) {
		baby = instance_create_depth(x, y, 0, choose(parameciumBreeder2Tails));
	} else {
		baby = instance_create_depth(x, y, 0, parameciumBreeder2Tails);
	}
	baby.hp = maxHp/1.5;
	hp = maxHp/1.5;
	global.points += 1;
}

direction += steering;
image_angle = direction;


if (instance_exists(target)) {
	speed = clamp(speed + 0.05, minSpeed, maxSpeed);	
	direction = point_direction(x, y, target.x, target.y);
} else {
	if (flag == false) {
		alarm[1] = random_range(.65,0.65)*room_speed;
		flag = true;
	}
	speed = clamp(speed - 0.05, minSpeed, maxSpeed);	
}

if(x < 0) {
	x = 5;
	direction += 180 + random_range(-20,20);
}
if(x > room_width) {
	x = room_width - 5;
	direction += 180 + random_range(-20,20);
}
if(y < 0) {
	y = 5;
	direction += 180 + random_range(-20,20);
}
if(y > room_height) {
	y = room_height - 5;
	direction += 180 + random_range(-20,20);
}

if (hp <= 0) {
	instance_destroy(self);
}