/// @description Insert description here
// You can write your code in this editor

image_xscale = hp/60;
image_yscale = hp/60;


if (hp >= maxHp && growthFlag == false && instance_number(beadPlant) < 1000 && instance_number(beadPlantInvert) < 1000) {
	roll = random_range(1,100);
	if(roll >= 97) {
		baby = instance_create_depth(x, y, 0, choose(beadPlantMaster));
		baby.direction = direction;
		baby.finalX = finalX+lengthdir_x(15,direction);
		baby.finalY = finalY+lengthdir_y(15,direction);
		/*direction = direction+random_range(-90, 90);
		baby = instance_create_depth(x, y, 0, choose(beadPlant));
		baby.direction = direction;
		baby.finalX = finalX+lengthdir_x(15,direction);
		baby.finalY = finalY+lengthdir_y(15,direction);*/
	} else {
		baby = instance_create_depth(x, y, 0, beadPlant);
		baby.direction = direction + random_range(-15,15);
		baby.finalX = finalX+lengthdir_x(15,direction);
		baby.finalY = finalY+lengthdir_y(15,direction);
	}
	growthFlag = true;
}


if (hp <= 0) {
	instance_destroy(self);
}

if(x < 0) {
	instance_destroy(self);
}
if(x > room_width) {
	instance_destroy(self);
}
if(y < 0) {
	instance_destroy(self);
}
if(y > room_height) {
	instance_destroy(self);
}