/// @description Insert description here
// You can write your code in this editor

steering = choose(-1, 1, 0, 0);
alarm[0] = random_range(1,4)*room_speed;
speed = clamp(speed+choose(-1,0,1), minSpeed, maxSpeed);
hp -= 2;