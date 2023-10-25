/// @description spawn timer


if(roll >= 95){
	with (chloroplast){instance_create_layer(x, y, layer, TreePink);}
} else {
	with (chloroplast){instance_create_layer(x, y, layer, Tree);}
}

alarm[1] = random_range(7*room_speed, 13*room_speed);