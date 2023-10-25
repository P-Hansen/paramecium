image_angle = direction;

if(hp <= 0 ){
	instance_destroy(self);
}

if(hp < MaxHp && fullGownFlag == false) {
	hp = hp + MaxHp/400;
	image_xscale = hp/MaxHp;
	image_yscale = hp/MaxHp;
	if(hp >= MaxHp){fullGownFlag = true;}
} else if(hp < MaxHp && fullGownFlag == true){
	hp = hp + MaxHp/400;
	image_xscale = clamp((hp/MaxHp), 0.40, 1);
	image_yscale = clamp((hp/MaxHp), 0.40, 1);
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