/// @description Insert description here
// You can write your code in this editor

if (instance_exists(myShell)){
	myShell.direction = direction;
}
if (instance_exists(myShell)){
	myShell.x = x;
}
if (instance_exists(myShell)){
	myShell.y = y;
}
if (instance_exists(myShell)){
	myShell.maxSize = clamp(hp*0.01, 0.2, 100);
	//myShell.image_xscale = clamp(hp*0.01, 0.2, 100);
}
if (instance_exists(myShell)){
	//myShell.image_yscale = clamp(hp*0.01, 0.2, 100);
}
