/// @description Insert description here
// You can write your code in this editor


if(x < -5) {
	direction = 180 - direction;
}
if(x > room_width + 5) {
	direction = 180 - direction;
}
if(y < -5) {
	direction = -direction;
}
if(y > room_height + 5) {
	direction = -direction;
}