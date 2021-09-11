/// @description Insert description here
// You can write your code in this editor

if (hp < other.hp) {
	other.hp += 10;
	instance_destroy(self);
} else {
	move_bounce_all(false);
	//other.direction = point_direction(x,y, other.x, other.y)+180;
	//other.direction = point_direction(other.x, other.y, x, y)+180;
}