/// @description Insert description here
// You can write your code in this editor

other.hp -= 20;
food = instance_create_depth(x,y,0,sugar);
food.direction = direction+180;
instance_destroy(self);