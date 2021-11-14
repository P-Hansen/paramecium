/// @description spawn

if (numberOfSpawns > 0) {
	instance_create_depth(random_range(10, room_width-10),room_height+15,0,worm);
	alarm[0] = random_range(0.1,5)*room_speed;
	numberOfSpawns -= 1;
} else {
	instance_destroy(self);
}