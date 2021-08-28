/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
mutant = instance_create_depth(x,y,0,choose(foodOrange,toxic,waste));
mutant.direction = other.direction + 180;