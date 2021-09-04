/// @description Insert description here
// You can write your code in this editor

image_xscale = clamp(hp*0.01, 0.2, 100);
image_yscale = clamp(hp*0.01, 0.2, 100);

if (hp >= maxHp) {
	roll = random_range(1,10);
	if(roll >= 9) {
		baby = instance_create_depth(x, y, 0, choose(parameciumBreederBlue));
	} else {
		baby = instance_create_depth(x, y, 0, parameciumBreederBlue);
	}
	baby.hp = maxHp/2;
	roll = random_range(1,10);
	if(roll >= 9) {
		baby = instance_create_depth(x, y, 0, choose(parameciumBreederBlue));
	} else {
		baby = instance_create_depth(x, y, 0, parameciumBreederBlue);
	}
	baby.hp = maxHp/2;
	instance_destroy(cilia1);
	instance_destroy(cilia2);
	instance_destroy(cilia3);
	instance_destroy(cilia4);
	instance_destroy(cilia5);
	instance_destroy(cilia6);
	instance_destroy(cilia7);
	instance_destroy(cilia8);
	instance_destroy(cilia9);
	instance_destroy(cilia10);
	instance_destroy(cilia11);
	instance_destroy(cilia12);
	instance_destroy(cilia13);
	instance_destroy(cilia14);
	instance_destroy(cilia15);
	instance_destroy(cilia16);
	instance_destroy(self);
}

direction += steering;
image_angle = direction;

target = instance_nearest(x,y,foodOrange);
if(instance_exists(target) && point_distance(x, y, target.x, target.y) <= sightRange) {
	direction = point_direction(x, y, target.x, target.y);
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
	instance_destroy(cilia1);
	instance_destroy(cilia2);
	instance_destroy(cilia3);
	instance_destroy(cilia4);
	instance_destroy(cilia5);
	instance_destroy(cilia6);
	instance_destroy(cilia7);
	instance_destroy(cilia8);
	instance_destroy(cilia9);
	instance_destroy(cilia10);
	instance_destroy(cilia11);
	instance_destroy(cilia12);
	instance_destroy(cilia13);
	instance_destroy(cilia14);
	instance_destroy(cilia15);
	instance_destroy(cilia16);
	instance_destroy(self);
}