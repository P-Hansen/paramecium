/// @description Insert description here
// You can write your code in this editor

if (state = true) {
	steering = choose(-1, 1, 0);
	speed = clamp(speed+choose(-1,0,1), minSpeed, maxSpeed);
	hp -= 3.6;
}

hp -= 0.4;
alarm[0] = random_range(2,3.5)*room_speed;