/// @description Growth speed
// You can write your code in this editor

alarm[1] = 1*room_speed;
//hp += random_range(2,5);
hp = clamp(hp + random_range(20,40), 0, maxHp);