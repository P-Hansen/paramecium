/// @description migration
if(global.points >= 10){
	global.points = global.points - 10;
	instance_create_depth(random_range(10, room_width-10),room_height+15,0,migration);
}

