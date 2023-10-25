/// @description Insert description here
// You can write your code in this editor

steering = choose(-2, -1, 1, 2, 0, 0);
alarm[0] = random_range(2,4)*room_speed;
speed = clamp(speed+choose(-.5,0,.5), minSpeed, maxSpeed);
hp -= 2;