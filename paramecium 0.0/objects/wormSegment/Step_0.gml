/// @description Insert description here

image_angle = direction;

if(x < -10) {
	instance_destroy(self);
}
if(x > room_width+10) {
	instance_destroy(self);
}
if(y < -10) {
	instance_destroy(self);
}
if(y > room_height+10) {
	instance_destroy(self);
}
