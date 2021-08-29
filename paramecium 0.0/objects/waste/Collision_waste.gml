/// @description Insert description here
// You can write your code in this editor



newFood = instance_create_depth(x+lengthdir_x(6, direction),y+lengthdir_y(6, direction),0,foodOrange);
//newFood = instance_create_depth(x,y,0,foodOrange);
//newFood.direction = direction + 180;
instance_destroy(self);