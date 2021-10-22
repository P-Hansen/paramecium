/// @description Insert description here
// You can write your code in this editor



newFood = instance_create_depth(x+lengthdir_x(7, direction),y+lengthdir_y(7, direction),0,choose(foodOrange, foodYellow));
//newFood = instance_create_depth(x,y,0,foodOrange);
//newFood.direction = direction + 180;
instance_destroy(self);