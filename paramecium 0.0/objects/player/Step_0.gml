/// @description Insert description here
// You can write your code in this editor

//myHorn.direction = direction;
//myHorn.x = x+lengthdir_x(48,direction)
//myHorn.y = y+lengthdir_y(48,direction)

//myTail.direction = direction;
//myTail.x = x+lengthdir_x(-44,direction)
//myTail.y = y+lengthdir_y(-44,direction)
//myTail.image_speed = speed*0.2;

cilia1.direction = direction+180;
cilia1.x = x+lengthdir_x(-50,direction)
cilia1.y = y+lengthdir_y(-50,direction)

cilia2.direction = direction;
cilia2.x = x+lengthdir_x(50,direction)
cilia2.y = y+lengthdir_y(50,direction)

cilia3.direction = direction+22;
cilia3.x = x+lengthdir_x(45,direction+22)
cilia3.y = y+lengthdir_y(45,direction+22)

cilia4.direction = direction+45;
cilia4.x = x+lengthdir_x(40,direction+45)
cilia4.y = y+lengthdir_y(40,direction+45)

cilia5.direction = direction+67;
cilia5.x = x+lengthdir_x(34,direction+67)
cilia5.y = y+lengthdir_y(34,direction+67)

cilia6.direction = direction+90;
cilia6.x = x+lengthdir_x(33,direction+90)
cilia6.y = y+lengthdir_y(33,direction+90)

cilia7.direction = direction+112;
cilia7.x = x+lengthdir_x(34,direction+112)
cilia7.y = y+lengthdir_y(34,direction+112)

cilia8.direction = direction+135;
cilia8.x = x+lengthdir_x(40,direction+135)
cilia8.y = y+lengthdir_y(40,direction+135)

cilia9.direction = direction+158;
cilia9.x = x+lengthdir_x(45,direction+158)
cilia9.y = y+lengthdir_y(45,direction+158)

image_angle = direction;

cilia10.direction = direction-22;
cilia10.x = x+lengthdir_x(45,direction-22)
cilia10.y = y+lengthdir_y(45,direction-22)

cilia11.direction = direction-45;
cilia11.x = x+lengthdir_x(40,direction-45)
cilia11.y = y+lengthdir_y(40,direction-45)

cilia12.direction = direction-67;
cilia12.x = x+lengthdir_x(34,direction-67)
cilia12.y = y+lengthdir_y(34,direction-67)

cilia13.direction = direction-90;
cilia13.x = x+lengthdir_x(33,direction-90)
cilia13.y = y+lengthdir_y(33,direction-90)

cilia14.direction = direction-112;
cilia14.x = x+lengthdir_x(34,direction-112)
cilia14.y = y+lengthdir_y(34,direction-112)

cilia15.direction = direction-135;
cilia15.x = x+lengthdir_x(40,direction-135)
cilia15.y = y+lengthdir_y(40,direction-135)

cilia16.direction = direction-158;
cilia16.x = x+lengthdir_x(45,direction-158)
cilia16.y = y+lengthdir_y(45,direction-158)

if(x < 0) {
	x = 5;
}
if(x > room_width) {
	x = room_width - 5;
}
if(y < 0) {
	y = 5;
}
if(y > room_height) {
	y = room_height - 5;
}

if (health <= 0) {
//	instance_destroy(myHorn);
//	instance_destroy(myTail);
	instance_destroy(self)
}

speed = clamp(speed-0.04, 0, maxSpeed);
