/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
hp = clamp(hp + 12, 0, maxHp);
poop = instance_create_depth(other.x,other.y,0,waste);
poop.direction = other.direction;
