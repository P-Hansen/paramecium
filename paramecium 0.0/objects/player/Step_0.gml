/// @description Insert description here
// You can write your code in this editor

image_angle = direction;

myER.direction = direction;
myER.x = x;
myER.y = y;

if(x < 0) {
	x = 5;
}
if(x > room_width) {
	x = room_width - 5;
}
if(y < 0) {
	y = 5;
}
if(y > room_height) {
	y = room_height - 5;
}

if (health <= 0) {
//	instance_destroy(myHorn);
//	instance_destroy(myTail);
	instance_destroy(self)
}

speed = clamp(speed-0.04, 0, maxSpeed);
