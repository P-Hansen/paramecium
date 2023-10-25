/// @description Insert description here
// You can write your code in this editor
/*
if (x < 0 || x > room_width || y < 0 || y > room_height) {
	instance_destroy(self);
}*/

if(x < 0) {
	direction = 180 - direction;
}
if(x > room_width) {
	direction = 180 - direction;
}
if(y < 0) {
	direction = -direction;
}
if(y > room_height) {
	direction = -direction;
}
/*
if(x < -5) {
	direction = 180 - direction;
	newFood = instance_create_depth(0,y,0,chloroplast);
	newFood.direction = direction;
	instance_destroy(self);
}
if(x > room_width + 5) {
	direction = 180 - direction;
	newFood = instance_create_depth(room_width,y,0,chloroplast);
	newFood.direction = direction;
	instance_destroy(self);
}
if(y < -5) {
	direction = -direction;
	newFood = instance_create_depth(x,0,0,chloroplast);
	newFood.direction = direction;
	instance_destroy(self);
}
if(y > room_height + 5) {
	direction = -direction;
	newFood = instance_create_depth(x,room_height,0,chloroplast);
	newFood.direction = direction;
	instance_destroy(self);
}
*/
if(x < -5) {
	direction = 180 - direction;
	x = 0;
}
if(x > room_width + 5) {
	direction = 180 - direction;
	x = room_width;
}
if(y < -5) {
	direction = -direction;
	y = 0;
}
if(y > room_height + 5) {
	direction = -direction;
	y = room_height;
}