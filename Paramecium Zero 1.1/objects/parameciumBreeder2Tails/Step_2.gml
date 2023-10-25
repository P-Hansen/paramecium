/// @description Insert description here
// You can write your code in this editor
/*
myTail1.direction = direction;
myTail1.x = x+lengthdir_x(-44*(hp*0.01),direction)
myTail1.y = y+lengthdir_y(-44*(hp*0.01),direction)
myTail1.image_speed = speed*1;
myTail1.image_xscale = clamp(hp*0.01, 0.2, 100);
myTail1.image_yscale = clamp(hp*0.01, 0.2, 100);

myTail2.direction = direction;
myTail2.x = x+lengthdir_x(-33*(hp*0.01),direction)
myTail2.y = y+lengthdir_y(-33*(hp*0.01),direction)
myTail2.image_speed = speed*1;
myTail2.image_xscale = clamp(hp*0.01, 0.2, 100);
myTail2.image_yscale = clamp(hp*0.01, 0.2, 100);

myTail3.direction = direction;
myTail3.x = x+lengthdir_x(-33*(hp*0.01),direction)
myTail3.y = y+lengthdir_y(33*(hp*0.01),direction)
myTail3.image_speed = speed*1;
myTail3.image_xscale = clamp(hp*0.01, 0.2, 100);
myTail3.image_yscale = clamp(hp*0.01, 0.2, 100);
*/

myTail1.direction = direction-20;
myTail1.x = x-lengthdir_x(44*(hp*0.01),direction-10)
myTail1.y = y-lengthdir_y(44*(hp*0.01),direction-10)
myTail1.image_xscale = clamp(hp*0.01, 0.2, 100);
myTail1.image_yscale = clamp(hp*0.01, 0.2, 100);
myTail1.image_speed = speed*0.5;
/*
myTail2.direction = direction;
myTail2.x = x-lengthdir_x(50*(hp*0.01),direction)
myTail2.y = y-lengthdir_y(50*(hp*0.01),direction)
myTail2.image_xscale = clamp(hp*0.01, 0.2, 100);
myTail2.image_yscale = clamp(hp*0.01, 0.2, 100);
myTail2.image_speed = speed*0.5;
*/
myTail3.direction = direction+20;
myTail3.x = x-lengthdir_x(44*(hp*0.01),direction+10)
myTail3.y = y-lengthdir_y(44*(hp*0.01),direction+10)
myTail3.image_xscale = clamp(hp*0.01, 0.2, 100);
myTail3.image_yscale = clamp(hp*0.01, 0.2, 100);
myTail3.image_speed = speed*0.5;