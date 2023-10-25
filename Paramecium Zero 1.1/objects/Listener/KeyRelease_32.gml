/// @description clear
with (allActiveParentClass){
	instance_destroy(self);
}
with (parameciumBreederSlime){
	instance_destroy(self);
}
if(instance_exists(famine)){
	with(famine){
		active = false;
		alarm[0] = 1*room_speed;
	}
}
global.points = 5;
instance_create_depth(room_width/2, room_height/2,0,parameciumBreederWhite);


