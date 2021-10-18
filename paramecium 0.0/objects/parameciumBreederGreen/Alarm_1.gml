/// @description Growth speed
// You can write your code in this editor

alarm[1] = 0.5*room_speed;
//hp += random_range(2,5);
hp = clamp(hp + random_range(1,4), 0, maxHp);