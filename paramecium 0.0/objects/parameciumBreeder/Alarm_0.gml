/// @description Insert description here
// You can write your code in this editor

steering = choose(-2, 2, 0);
alarm[0] = random_range(1,4)*room_speed;
speed = clamp(speed+choose(-1,0,1), 2, maxSpeed);