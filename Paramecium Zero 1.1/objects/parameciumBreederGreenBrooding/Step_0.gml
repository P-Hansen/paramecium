/// @description Insert description here
// You can write your code in this editor

image_xscale = hp*0.01;
image_yscale = hp*0.01;

direction += steering;
image_angle = direction;
enemy1 = instance_nearest(x,y,parameciumParentClass);
enemy2 = instance_nearest(x,y,parameciumBreederToxic);
if (instance_exists(enemy1) && point_distance(x, y, enemy1.x, enemy1.y) <= sightRange && hp < 50 && enemy1.hp > hp) {
	direction = point_direction(x, y, enemy1.x, enemy1.y)+180;
} else if (instance_exists(enemy2) && point_distance(x, y, enemy2.x, enemy2.y) <= sightRange && hp < 50 && enemy2.hp > hp) {
	direction = point_direction(x, y, enemy2.x, enemy2.y)+180;
}

//movement towards food items
/*
targetWhite = instance_nearest(x,y,sugar);
if (instance_exists(targetWhite) && point_distance(x, y, targetWhite.x, targetWhite.y) <= sightRange) {
	direction = point_direction(x, y, targetWhite.x, targetWhite.y);
}
*/
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
/*
if instance_exists(poison1) {
	poison1.x = x;
	poison1.y = y;
	poison1.direction = direction;
}*/
if instance_exists(poison2) {
	poison2.x = x-lengthdir_x(-X2*(hp*0.02),direction);
	poison2.y = y-lengthdir_y(-Y2*(hp*0.02),direction);
	poison2.direction = direction;
}
if instance_exists(poison3) {
	poison3.x = x-lengthdir_x(-X3*(hp*0.02),direction);
	poison3.y = y-lengthdir_y(+Y3*(hp*0.02),direction);
	poison3.direction = direction;
}
if instance_exists(poison4) {
	poison4.x = x-lengthdir_x(+X4*(hp*0.02),direction);
	poison4.y = y-lengthdir_y(+Y4*(hp*0.02),direction);
	poison4.direction = direction;
}
if instance_exists(poison5) {
	poison5.x = x-lengthdir_x(+X5*(hp*0.02),direction);
	poison5.y = y-lengthdir_y(-Y5*(hp*0.02),direction);
	poison5.direction = direction;
}


if (instance_exists(poison2) && poison2.hp > 35) {
	poison2 = noone;	
}
if (instance_exists(poison3) && poison3.hp > 35) {
	poison3 = noone;	
}
if (instance_exists(poison4) && poison4.hp > 35) {
	poison4 = noone;	
}
if (instance_exists(poison5) && poison5.hp > 35) {
	poison5 = noone;	
}

if (hp > 35) {
	image_index = 1;
	image_alpha = 1;
	if (hp >= 110) {
		image_index = 2;	
	}
}

//chloro.x = x;
//chloro.y = y;
//chloro.image_xscale = image_xscale;
//chloro.image_yscale = image_yscale;