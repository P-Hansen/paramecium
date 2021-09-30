/// @description Insert description here
// You can write your code in this editor

if (state = true) {
	state = false;
	speed = 0;
	for (var i=0; i<array_length_1d(spikeArray); i++) {
		spikeArray[i].maxSize = clamp(hp*0.01, 0.2, 100);
	}
	//cilia15.maxSize = clamp(hp*0.01, 0.2, 100);
	//cilia16.maxSize = clamp(hp*0.01, 0.2, 100);
	minSize = image_xscale/1.5;
} else {
	state = true
	speed = clamp(speed+choose(-1,0,1), minSpeed, maxSpeed);
	for (var i=0; i<array_length_1d(spikeArray); i++) {
		spikeArray[i].maxSize = 0.1;
	}
}

alarm[1] = 5*room_speed;