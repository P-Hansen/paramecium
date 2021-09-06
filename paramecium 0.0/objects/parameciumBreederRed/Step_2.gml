/// @description Insert description here
// You can write your code in this editor

if (instance_exists(myHorn1)){
	myHorn1.direction = direction;
}
if (instance_exists(myHorn1)){
	myHorn1.x = x+lengthdir_x(45*(hp*0.01),direction);
}
if (instance_exists(myHorn1)){
	myHorn1.y = y+lengthdir_y(48*(hp*0.01),direction);
}
if (instance_exists(myHorn1)){
	myHorn1.maxSize = clamp(hp*0.01, 0.2, 100);
}

if (instance_exists(myHorn2)){
	myHorn2.direction = direction+22;
}
if (instance_exists(myHorn2)){
	myHorn2.x = x+lengthdir_x(44*(hp*0.01),direction+22)
}
if (instance_exists(myHorn2)){
	myHorn2.y = y+lengthdir_y(44*(hp*0.01),direction+22)
}
if (instance_exists(myHorn2)){
	myHorn2.maxSize = clamp(hp*0.007, 0.2, 100);;
}

if (instance_exists(myHorn3)){
	myHorn3.direction = direction-22;
}
if (instance_exists(myHorn3)){
	myHorn3.x = x+lengthdir_x(44*(hp*0.01),direction-22)
}
if (instance_exists(myHorn3)){
	myHorn3.y = y+lengthdir_y(44*(hp*0.01),direction-22)
}
if (instance_exists(myHorn3)){
	myHorn3.maxSize = clamp(hp*0.007, 0.2, 100);;
}