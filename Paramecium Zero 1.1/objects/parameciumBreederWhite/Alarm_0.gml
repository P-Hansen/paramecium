/// @description Insert description here
// You can write your code in this editor

steering = choose(-2, 2, 0);
alarm[0] = random_range(1,4)*room_speed;
speed = clamp(speed+choose(-0.5,0,0.5), minSpeed, maxSpeed);
hp -= 2;