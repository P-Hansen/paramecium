/// @description Insert description here
// You can write your code in this editor

direction = direction - random_range(0, 360);
if (instance_exists(enemy1) && point_distance(x, y, enemy1.x, enemy1.y) <= sightRangeEnemies) {
	direction = point_direction(x, y, enemy1.x, enemy1.y)+180;
}
alarm[0] = random_range(1,3)*room_speed;
//speed = clamp(speed+choose(-1,0,1), minSpeed, maxSpeed);
