image_angle = direction;

if(hp <= 0 ){
	instance_destroy(self);
}

if(hp < MaxHp && grownFlag == false) {
	hp = hp + MaxHp/400;
	image_xscale = hp/MaxHp;
	image_yscale = hp/MaxHp;
} else if(hp >= MaxHp && grownFlag == false && instance_number(stemLeft)+instance_number(stemRight) < 300){
	next = instance_create_layer(x + lengthdir_x(30,direction),y+lengthdir_y(30,direction),layer,FrondLeft);
	next.direction = direction+random_range(-30,30)+15;
	roll = random_range(1,100);
	if(roll >= 90){
		next = instance_create_layer(x + lengthdir_x(30,direction),y+lengthdir_y(30,direction),layer,FrondRight);
		next.direction = direction+random_range(-30,30)-15;
	}
	grownFlag = true;
}

if(x < 0) {
	instance_destroy(self);
}
if(x > room_width) {
	instance_destroy(self);
}
if(y < 0) {
	instance_destroy(self);
}
if(y > room_height) {
	instance_destroy(self);
}