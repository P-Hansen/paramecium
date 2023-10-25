/// @description Insert description here
// You can write your code in this editor

image_xscale = clamp(hp*0.01, 0.2, 100)/1.5;
image_yscale = clamp(hp*0.01, 0.2, 100);


if (hp >= maxHp  && instance_number(parameciumBreederGreenPlant) < 100 ) && growthFlag == false {
	roll = random_range(1,10);
	if(roll >= 8) {
		direction = direction+random_range(-90, 90);
		baby = instance_create_depth(x+lengthdir_x(35,direction), y+lengthdir_y(35,direction), 0, choose(parameciumBreederGreenPlant));
		baby.direction = direction;
		direction = direction+random_range(-90, 90);
		baby = instance_create_depth(x+lengthdir_x(35,direction), y+lengthdir_y(35,direction), 0, choose(parameciumBreederGreenPlant));
		baby.direction = direction;
	} else {
		baby = instance_create_depth(x+lengthdir_x(35,direction), y+lengthdir_y(35,direction), 0, parameciumBreederGreenPlant);
		baby.direction = direction;
	}
	//baby.hp = maxHp/2;
	growthFlag = true;
	global.points += 1;
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