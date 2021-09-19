/// @description Insert description here
// You can write your code in this editor

myVacuumArea.direction = direction;
myVacuumArea.image_angle = image_angle;
//myVacuumArea.x = x;
//myVacuumArea.y = y;
myVacuumArea.x = x+lengthdir_x(50*(hp*0.01),direction)
myVacuumArea.y = y+lengthdir_y(50*(hp*0.01),direction)
myVacuumArea.image_xscale = clamp(hp*0.01, 0.2, 100);
myVacuumArea.image_yscale = clamp(hp*0.01, 0.2, 100);