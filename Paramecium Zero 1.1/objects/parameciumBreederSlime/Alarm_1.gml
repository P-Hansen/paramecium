/// @description slime trail

slime1 = instance_create_depth(x+lengthdir_x(50*(hp*0.01),direction+180), y+lengthdir_y(50*(hp*0.01),direction+180), 0, slime);
slime1.image_angle = direction+180;
if(roll < 5){
	slime1.image_index = 1;
}

alarm[1] = 2;