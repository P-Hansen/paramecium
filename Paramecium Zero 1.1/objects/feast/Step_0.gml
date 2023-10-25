/// @description Insert description here
// You can write your code in this editor

if (active == true) {
	var roll = random_range(1,10);
	if (roll > 5) {
		instance_create_depth(0, random_range(0,room_height) , 0, waste);
		instance_create_depth(room_width, random_range(0,room_height) , 0, waste);
	} else {
		instance_create_depth(random_range(0,room_width), 0 , 0, waste);
		instance_create_depth(random_range(0,room_width), room_height , 0, waste);
	}
	if (instance_number(waste)+instance_number(foodOrange)+instance_number(foodYellow) >= (totalFood*2) ) {
		active = false;
		alarm[0] = 120*room_speed;
	}
}