/// @description Insert description here
// You can write your code in this editor

steering = choose(-0.5, 0.5, 0);

alarm[0] = random_range(2,3)*room_speed;
speed = clamp(speed+choose(-0.5,0,0.5), minSpeed, maxSpeed);

