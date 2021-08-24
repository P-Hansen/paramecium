/// @description Insert description here
// You can write your code in this editor
if(x < -10) {
	direction += 180;
	newFood = instance_create_depth(x+10,y,0,foodOrange);
	newFood.direction = direction + random_range(-25,25);
}
if(x > room_width+10) {
	direction += 180;
	newFood = instance_create_depth(x-10,y,0,foodOrange);
	newFood.direction = direction + random_range(-25,25);
}
if(y < -10) {
	direction += 180;
	newFood = instance_create_depth(x,y+10,0,foodOrange);
	newFood.direction = direction + random_range(-25,25);
}
if(y > room_height+10) {
	direction += 180;
	newFood = instance_create_depth(x,y-10,0,foodOrange);
	newFood.direction = direction + random_range(-25,25);
}