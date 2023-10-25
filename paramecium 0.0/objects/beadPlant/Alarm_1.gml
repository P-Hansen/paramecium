/// @description Growth speed
// You can write your code in this editor

alarm[1] = 0.25*room_speed;
//hp += random_range(2,5);
hp = clamp(hp + random_range(2,4), 0, maxHp);
if(speed == 0){
	x = lerp(x,finalX,0.1);
	y = lerp(y,finalY,0.1);
}
image_angle = direction;