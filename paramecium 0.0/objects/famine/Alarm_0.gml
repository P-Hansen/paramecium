/// @description +food

if (totalFood > 0 ) {
	var roll = random_range(1,10);
	if (roll > 5) {
		instance_create_depth(0, random_range(0,room_height) , 0, waste);
	} else {
		instance_create_depth(random_range(0,room_width), 0 , 0, waste);
	}
	totalFood -= 1;
} else {
	instance_destroy(self);
}

alarm[0] = 1*room_speed;