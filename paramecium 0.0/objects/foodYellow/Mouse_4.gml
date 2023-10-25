/// @description Insert description here
// You can write your code in this editor
if(global.points > 0){
	instance_destroy(self);
	newFood = instance_create_depth(x+lengthdir_x(7, direction),y+lengthdir_y(7, direction),0,foodOrange);
	global.points = global.points - 1;
}
