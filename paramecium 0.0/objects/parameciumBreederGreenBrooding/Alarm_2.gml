/// @description breeding timer
// You can write your code in this editor

alarm[2] = 0.5*room_speed;

//breeding when over max hp
if (hp >= maxHp && instance_number(parameciumBreederGreenBrooding) < 30 ) {
	if (!instance_exists(poison2)) {
		poison2 = instance_create_depth(x,y, 0, parameciumBreederGreenBrooding);
		poison2.hp = 1;
		hp -= hp/8;
		X2 = random_range(1,10);
		Y2 = random_range(1,10);
	} else if (!instance_exists(poison3)) {
		poison3 = instance_create_depth(x,y, 0, parameciumBreederGreenBrooding);
		poison3.hp = 1;
		hp -= hp/8;
		X3 = random_range(1,10);
		Y3 = random_range(1,10);
	} else if (!instance_exists(poison4)) {
		poison4 = instance_create_depth(x,y, 0, parameciumBreederGreenBrooding);
		poison4.hp = 1;
		hp -= hp/8;
		X4 = random_range(1,10);
		Y4 = random_range(1,10);
	} else if (!instance_exists(poison5)) {
		poison5 = instance_create_depth(x,y, 0, parameciumBreederGreenBrooding);
		poison5.hp = 1;
		hp -= hp/8;
		X5 = random_range(1,10);
		Y5 = random_range(1,10);
	}
}