/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(sugarShortage)){
	instance_create_depth(x,y,0,sugar);
}
alarm[0] = random_range(8,12)*room_speed;
