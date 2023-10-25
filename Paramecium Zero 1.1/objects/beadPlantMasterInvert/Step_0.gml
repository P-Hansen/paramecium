/// @description Insert description here
// You can write your code in this editor

image_xscale = hp/maxHp;
image_yscale = hp/maxHp;

/*
if (hp >= maxHp && growthFlag == false) {
	direction = random_range(0, 90);
	baby = instance_create_depth(x+lengthdir_x(15,direction), y+lengthdir_y(15,direction), 0, choose(beadPlant));
	baby.direction = direction;
	direction = random_range(90, 180);
	baby = instance_create_depth(x+lengthdir_x(15,direction), y+lengthdir_y(15,direction), 0, choose(beadPlant));
	baby.direction = direction;
	direction = random_range(180, 270);
	baby = instance_create_depth(x+lengthdir_x(15,direction), y+lengthdir_y(15,direction), 0, choose(beadPlant));
	baby.direction = direction;
	direction = random_range(270, 360);
	baby = instance_create_depth(x+lengthdir_x(15,direction), y+lengthdir_y(15,direction), 0, choose(beadPlant));
	baby.direction = direction;
	direction = random_range(0, 360);
	baby = instance_create_depth(x+lengthdir_x(15,direction), y+lengthdir_y(15,direction), 0, choose(beadPlant));
	baby.direction = direction;
	growthFlag = true;
}
*/
if (hp >= maxHp && growthFlag == false) {
	direction = random_range(0, 90);
	baby = instance_create_depth(x, y, 0, beadPlantInvert);
	baby.direction = direction;
	baby.finalX = finalX+lengthdir_x(15,direction);
	baby.finalY = finalY+lengthdir_y(15,direction);
	
	direction = random_range(90, 180);
	baby = instance_create_depth(x, y, 0, beadPlantInvert);
	baby.direction = direction;
	baby.finalX = finalX+lengthdir_x(15,direction);
	baby.finalY = finalY+lengthdir_y(15,direction);
	
	direction = random_range(180, 270);
	baby = instance_create_depth(x, y, 0, beadPlantInvert);
	baby.direction = direction;
	baby.finalX = finalX+lengthdir_x(15,direction);
	baby.finalY = finalY+lengthdir_y(15,direction);
	
	direction = random_range(270, 360);
	baby = instance_create_depth(x, y, 0, beadPlantInvert);
	baby.direction = direction;
	baby.finalX = finalX+lengthdir_x(15,direction);
	baby.finalY = finalY+lengthdir_y(15,direction);
	
	direction = random_range(0, 360);
	baby = instance_create_depth(x, y, 0, beadPlantInvert);
	baby.direction = direction;
	baby.finalX = finalX+lengthdir_x(15,direction);
	baby.finalY = finalY+lengthdir_y(15,direction);
	
	growthFlag = true;
}

if (hp <= 0) {
	instance_destroy(self);
}