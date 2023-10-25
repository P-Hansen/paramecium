/// @description spawn timer

if(roll >= 90){
	with (chloroplast){
		instance_create_layer(x, y, layer, choose(FrondLeftInvert,FrondRightInvert));
	}
} else {
	with (chloroplast){
		instance_create_layer(x, y, layer, choose(FrondLeft,FrondRight));
	}
}

alarm[1] = random_range(20*room_speed, 30*room_speed);