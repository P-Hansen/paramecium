/// @description Insert description here
// You can write your code in this editor

if (active == true) {
	with (waste) {
		if(x <= 0) {
			instance_destroy(self);
		}
		if(x >= room_width) {
			instance_destroy(self);
		}
		if(y <= 0) {
			instance_destroy(self);
		}
		if(y >= room_height) {
			instance_destroy(self);
		}
	}
	
	if (instance_number(waste)+instance_number(foodOrange)+instance_number(foodYellow) == 0 ) {
		active = false;
		alarm[0] = 1;
	}
}