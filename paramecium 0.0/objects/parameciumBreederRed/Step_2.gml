/// @description Insert description here
// You can write your code in this editor

if (instance_exists(myHorn)){
	myHorn.direction = direction;
}
if (instance_exists(myHorn)){
	myHorn.x = x+lengthdir_x(45*(hp*0.01),direction);
}
if (instance_exists(myHorn)){
	myHorn.y = y+lengthdir_y(48*(hp*0.01),direction);
}
if (instance_exists(myHorn)){
	myHorn.maxSize = clamp(hp*0.01, 0.2, 100);;
}