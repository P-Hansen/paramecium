/// @description Creating new spores
// You can write your code in this editor

alarm[1] = 5*room_speed;

if (!instance_exists(poison1)) {
	fired = false;
	poison1x = random_range(-8,8);
	poison1y = random_range(-8,8);
	poison1 = instance_create_depth(x,y, 0, toxic);
	if(roll < 5){ poison1.image_blend = c_teal;	}
	poison1.x = x-lengthdir_x(poison1x*(hp*0.02),direction);
	poison1.y = y-lengthdir_y(poison1y*(hp*0.02),direction);
	//hp -= 1;
} else if (!instance_exists(poison2)) {
	poison2x = random_range(-8,8);
	poison2y = random_range(-8,8);
	poison2 = instance_create_depth(x,y, 0, toxic);
	if(roll < 5){ poison2.image_blend = c_teal;	}
	poison2.x = x-lengthdir_x(poison2x*(hp*0.02),direction);
	poison2.y = y-lengthdir_y(poison2y*(hp*0.02),direction);
	//hp -= 1;
} else if (!instance_exists(poison3)) {
	poison3x = random_range(-8,8);
	poison3y = random_range(-8,8);
	poison3 = instance_create_depth(x,y, 0, toxic);
	if(roll < 5){ poison3.image_blend = c_teal;	}
	poison3.x = x-lengthdir_x(poison3x*(hp*0.02),direction);
	poison3.y = y-lengthdir_y(poison3y*(hp*0.02),direction);
	//hp -= 1;
}/* else if (!instance_exists(poison4)) {
	hp -= 1;
	poison4 = instance_create_depth(x,y, 0, toxic);
} else if (!instance_exists(poison5)) {
	hp -= 1;
	poison5 = instance_create_depth(x,y, 0, toxic);
}*/