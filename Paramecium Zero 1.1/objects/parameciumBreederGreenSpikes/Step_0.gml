/// @description Insert description here
// You can write your code in this editor

image_xscale = clamp(hp*0.01, 0.2, 100)/1.5;
image_yscale = clamp(hp*0.01, 0.2, 100);
for (var i=0; i<array_length_1d(spikeArray); i++) {
	spikeArray[i].maxSize = clamp(hp*0.008, 0.2, 100);
}

if (hp >= maxHp  && instance_number(parameciumBreederGreenSpikes) < 30 ) {
	roll = random_range(1,10);
	if(roll >= 9) {
		baby = instance_create_depth(x, y, 0, choose(parameciumBreederGreenSpikes));
	} else {
		baby = instance_create_depth(x, y, 0, parameciumBreederGreenSpikes);
	}
	baby.hp = maxHp/2;
	hp = maxHp/2;
}

//direction += steering;
image_angle = direction;

target = instance_nearest(x,y,sugar);
enemy1 = instance_nearest(x,y,parameciumParentClass);
/*
if(instance_exists(target) && point_distance(x, y, target.x, target.y) <= sightRange) {
	direction = point_direction(x, y, target.x, target.y);
} /*else if (instance_exists(enemy1) && point_distance(x, y, enemy1.x, enemy1.y) <= sightRangeEnemies) {
	direction = point_direction(x, y, enemy1.x, enemy1.y)+180;
}*/

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

if (instance_exists(chloro)) {
	chloro.x = x;
	chloro.y = y;
	chloro.image_xscale = image_xscale;
	chloro.image_yscale = image_yscale;
}