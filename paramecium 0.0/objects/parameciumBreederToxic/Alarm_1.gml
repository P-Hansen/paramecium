/// @description Creating new spores
// You can write your code in this editor

alarm[1] = 2.5*room_speed;
//ammo += 1;
//if (ammo >= 3) {
//	fireFlag = true;
//}

if (!instance_exists(poison1)) {
	fired = false;
	poison1 = instance_create_depth(x,y, 0, toxic);
} else if (!instance_exists(poison2)) {
	poison2 = instance_create_depth(x,y, 0, toxic);
} else if (!instance_exists(poison3)) {
	poison3 = instance_create_depth(x,y, 0, toxic);
} else if (!instance_exists(poison4)) {
	poison4 = instance_create_depth(x,y, 0, toxic);
} else if (!instance_exists(poison5)) {
	poison5 = instance_create_depth(x,y, 0, toxic);
}