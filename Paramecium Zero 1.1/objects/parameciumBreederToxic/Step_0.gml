/// @description Insert description here
// You can write your code in this editor

image_xscale = clamp(hp*0.01, 0.2, 100);
image_yscale = clamp(hp*0.01, 0.2, 100);

//breeding when over max hp
if (hp >= maxHp) {
	roll2 = random_range(1,10);
	if(roll2 >= 9) {
		baby = instance_create_depth(x, y, 0, parameciumBreederToxicSpiter);
		baby.hp = maxHp/2;
	} else {
		baby = instance_create_depth(x, y, 0, parameciumBreederToxic);
		baby.hp = maxHp/2;
	}
	hp = maxHp/2;
	global.points += 1;
}

direction += steering;
image_angle = direction;

//movement towards food items
targetOrange = instance_nearest(x,y,foodOrange);
targetWhite = instance_nearest(x,y,sugar);
if (instance_exists(targetOrange) && point_distance(x, y, targetOrange.x, targetOrange.y) <= sightRange) {
	direction = point_direction(x, y, targetOrange.x, targetOrange.y);
}/* else if (instance_exists(targetWhite) && point_distance(x, y, targetWhite.x, targetWhite.y) <= sightRange) {
	direction = point_direction(x, y, targetWhite.x, targetWhite.y);
}*/

//shooting out spores when near other enemies
/*
enemy = instance_nearest(x,y,parameciumParentClass);
if(instance_exists(enemy) && point_distance(x, y, enemy.x, enemy.y) <= sightRange) && fireFlag = true {
	speed = clamp(speed + 1, minSpeed, maxSpeed+2);
	direction = point_direction(x,y, enemy.x, enemy.y)+180;
	poison = instance_create_depth(x+lengthdir_x(-45*(hp*0.01),direction),y+lengthdir_y(-48*(hp*0.01),direction), 0, toxic);
	poison.direction = direction+random_range(-5,5)+180;
	poison.speed = random_range(2,4);
	ammo -= 1;
	if (ammo <= 0) {
		fireFlag = false
	}
}*/

//redirecting movement when out of bounds
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

if (fired == false) {
	if instance_exists(poison1) {
		poison1.x = x-lengthdir_x(poison1x*(hp*0.02),direction);
		poison1.y = y-lengthdir_y(poison1y*(hp*0.02),direction);
		poison1.direction = direction;
	}
	if instance_exists(poison2) {
		poison2.x = x-lengthdir_x(poison2x*(hp*0.02),direction);
		poison2.y = y-lengthdir_y(poison2y*(hp*0.02),direction);
		poison2.direction = direction;
	}
	if instance_exists(poison3) {
		poison3.x = x-lengthdir_x(poison3x*(hp*0.02),direction);
		poison3.y = y-lengthdir_y(poison3y*(hp*0.02),direction);
		poison3.direction = direction;
	}/*
	if instance_exists(poison4) {
		poison4.x = x-lengthdir_x(+5*(hp*0.02),direction);
		poison4.y = y-lengthdir_y(+5*(hp*0.02),direction);
		poison4.direction = direction;
	}
	if instance_exists(poison5) {
		poison5.x = x-lengthdir_x(+5*(hp*0.02),direction);
		poison5.y = y-lengthdir_y(-5*(hp*0.02),direction);
		poison5.direction = direction;
	}*/
}