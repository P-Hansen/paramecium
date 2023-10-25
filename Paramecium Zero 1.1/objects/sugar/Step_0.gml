/// @description Insert description here
// You can write your code in this editor

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