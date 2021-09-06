/// @description Insert description here
// You can write your code in this editor

image_xscale = clamp(hp*0.01, 0.2, 100);
image_yscale = clamp(hp*0.01, 0.2, 100);

if (hp >= maxHp) {
	roll = random_range(1,10);
	if(roll >= 9) {
		//newColour = merge_colour(image_blend, make_colour_rgb( random(255),  random(255), random(255)), 0.5);
		baby = instance_create_depth(x, y, 0, parameciumBreederToxic);
		//baby.minSpeed = minSpeed + 1;
		//baby.image_blend = newColour;
		baby.hp = maxHp/2;
	
		baby = instance_create_depth(x, y, 0, parameciumBreederToxic);
		//baby.minSpeed = minSpeed + 1;
		//baby.image_blend = newColour;
		baby.hp = maxHp/2;
	} else {
		baby = instance_create_depth(x, y, 0, parameciumBreederToxic);
		baby.hp = maxHp/2;
		//baby.image_blend = image_blend;
	
		baby = instance_create_depth(x, y, 0, parameciumBreederToxic);
		baby.hp = maxHp/2;
		//baby.image_blend = image_blend;
	}
	instance_destroy(self);
}

direction += steering;
image_angle = direction;

targetOrange = instance_nearest(x,y,foodOrange);
targetWhite = instance_nearest(x,y,sugar);
if (instance_exists(targetOrange) && point_distance(x, y, targetOrange.x, targetOrange.y) <= sightRange) {
	direction = point_direction(x, y, targetOrange.x, targetOrange.y);
} else if (instance_exists(targetWhite) && point_distance(x, y, targetWhite.x, targetWhite.y) <= sightRange) {
	direction = point_direction(x, y, targetWhite.x, targetWhite.y);
}

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