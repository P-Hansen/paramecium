/// @description Insert description here
// You can write your code in this editor

maxSpeed += 0.5;
poop = instance_create_depth(other.x,other.y,0,waste);
poop.direction = other.direction;
instance_destroy(other);