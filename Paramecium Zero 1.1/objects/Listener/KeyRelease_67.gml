/// @description coral
if(global.points >= 10){
	global.points = global.points - 10;
	instance_create_depth(random_range(0,room_width), random_range(0,room_height),0,coral);
}