/// @description -food
if(global.points >= 5){
	global.points = global.points - 5;
	instance_destroy(instance_nearest(room_width/2, room_height/2, waste));
	instance_destroy(instance_nearest(room_width/2, room_height/2, waste));
}