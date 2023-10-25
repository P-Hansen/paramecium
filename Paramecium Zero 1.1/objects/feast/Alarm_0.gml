/// @description -food

if (instance_number(waste)+instance_number(foodOrange)+instance_number(foodYellow) > totalFood ) {
	instance_destroy(instance_find(waste,1))
} else {
	instance_destroy(self);
}

alarm[0] = 1*room_speed;