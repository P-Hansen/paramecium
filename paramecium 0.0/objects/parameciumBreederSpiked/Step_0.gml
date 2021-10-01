/// @description Insert description here
// You can write your code in this editor

if (state = true) {
	image_xscale = clamp(hp*0.01, 0.2, 100);
	image_yscale = clamp(hp*0.01, 0.2, 100);

	if (hp >= maxHp) {
		roll = random_range(1,10);
		if(roll >= 9) {
			baby = instance_create_depth(x, y, 0, choose(parameciumBreederSpiked));
		} else {
			baby = instance_create_depth(x, y, 0, parameciumBreederSpiked);
		}
		baby.hp = maxHp/2;
		roll = random_range(1,10);
		if(roll >= 9) {
			baby = instance_create_depth(x, y, 0, choose(parameciumBreederSpiked));
		} else {
			baby = instance_create_depth(x, y, 0, parameciumBreederSpiked);
		}
		baby.hp = maxHp/2;
		instance_destroy(self);
	}

	direction += steering;
	image_angle = direction;

	target = instance_nearest(x,y,foodParentClass);
	if(instance_exists(target) && point_distance(x, y, target.x, target.y) <= sightRange) {
		direction = point_direction(x, y, target.x, target.y);
	}
	
	myEnemy = instance_nearest(x,y,parameciumParentClass);
	if(instance_exists(myEnemy) && point_distance(x, y, myEnemy.x, myEnemy.y) <= 90) {
		alarm[1] = 1;
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
} else {
	if (image_xscale > minSize) {
		image_xscale = clamp(image_xscale-0.01, minSize, 1);
	}
}