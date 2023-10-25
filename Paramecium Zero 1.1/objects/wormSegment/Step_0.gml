/// @description Insert description here

image_angle = direction;

if(x < -20) {
	instance_destroy(self);
}
if(x > room_width+20) {
	instance_destroy(self);
}
if(y < -20) {
	instance_destroy(self);
}
if(y > room_height+20) {
	instance_destroy(self);
}
