/// @description Insert description here
// You can write your code in this editor

if (other.hp <= 40) {
	hp += 10;
	instance_destroy(other);
	direction = point_direction(x,y, other.x, other.y)+180;
	other.direction = point_direction(other.x, other.y, x, y)+180;
}