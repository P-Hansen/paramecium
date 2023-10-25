/// @description Insert description here
// You can write your code in this editor

myTail.direction = direction;
myTail.x = x+lengthdir_x(-44*(hp*0.01),direction)
myTail.y = y+lengthdir_y(-44*(hp*0.01),direction)
myTail.image_speed = speed*0.2;
myTail.image_xscale = clamp(hp*0.01, 0.2, 100);
myTail.image_yscale = clamp(hp*0.01, 0.2, 100);