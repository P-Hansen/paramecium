/// @description Creating new spores
// You can write your code in this editor

alarm[1] = 5*room_speed;
//ammo += 1;
//if (ammo >= 3) {
//	fireFlag = true;
//}

if (!instance_exists(poison1)) {
	fired = false;
	poison1 = instance_create_depth(x,y, 0, toxic);
	if(roll < 5){ poison1.image_blend = c_olive;}
	hp -= 1;
} else if (!instance_exists(poison2)) {
	hp -= 1;
	poison2 = instance_create_depth(x,y, 0, toxic);
	if(roll < 5){ poison2.image_blend = c_olive;}
} else if (!instance_exists(poison3)) {
	hp -= 1;
	poison3 = instance_create_depth(x,y, 0, toxic);
	if(roll < 5){ poison3.image_blend = c_olive;}
} else if (!instance_exists(poison4)) {
	hp -= 1;
	poison4 = instance_create_depth(x,y, 0, toxic);
	if(roll < 5){ poison4.image_blend = c_olive;}
} else if (!instance_exists(poison5)) {
	hp -= 1;
	poison5 = instance_create_depth(x,y, 0, toxic);
	if(roll < 5){ poison5.image_blend = c_olive;}
}