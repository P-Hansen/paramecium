/// @description Insert description here
// You can write your code in this editor


if(x < -10) {
	direction += 180;
	x = 0;
	//newFood = instance_create_depth(x+10,y,0,choose(chloroplast, foodOrange, sugar, toxic, waste));
	//newFood.direction = direction + random_range(-25,25);
	//instance_destroy(self);
}
if(x > room_width+10) {
	direction += 180;
	x = room_width;
	//newFood = instance_create_depth(x-10,y,0,choose(chloroplast, foodOrange, sugar, toxic, waste));
	//newFood.direction = direction + random_range(-25,25);
	//instance_destroy(self);
}
if(y < -10) {
	direction += 180;
	y = 0;
	//newFood = instance_create_depth(x,y+10,0,choose(chloroplast, foodOrange, sugar, toxic, waste));
	//newFood.direction = direction + random_range(-25,25);
	//instance_destroy(self);
}
if(y > room_height+10) {
	direction += 180;
	y = room_height;
	//newFood = instance_create_depth(x,y-10,0,choose(chloroplast, foodOrange, sugar, toxic, waste));
	//newFood.direction = direction + random_range(-25,25);
	//instance_destroy(self);
}