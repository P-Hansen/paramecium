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