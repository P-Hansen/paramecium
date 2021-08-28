/// @description Insert description here
// You can write your code in this editor

hp = clamp(hp + 10, 0, maxHp);
poop = instance_create_depth(other.x,other.y,0,waste);
poop.direction = other.direction;
instance_destroy(other);