/// @description +food
if(global.points >= 5){
	global.points = global.points - 5;
	instance_create_depth(random_range(0,room_width), random_range(0,room_height),0,foodOrange);
}