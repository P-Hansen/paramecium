/// @description spawn timer

roll2 = random_range(1,100);
if(roll >= 95){
	if(roll2 >= 95){
		with (chloroplast){instance_create_layer(x, y, layer, beadPlantMaster);}
	} else {
		with (chloroplast){instance_create_layer(x, y, layer, beadPlantMasterInvert);}
	}
} else {
	if(roll2 >= 95){
		with (chloroplast){instance_create_layer(x, y, layer, beadPlantMasterInvert);}
	} else {
		with (chloroplast){instance_create_layer(x, y, layer, beadPlantMaster);}
	}
}

alarm[1] = random_range(6*room_speed, 10*room_speed);