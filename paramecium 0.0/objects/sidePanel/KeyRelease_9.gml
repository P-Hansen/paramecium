/// @description Insert description here
// You can write your code in this editor
show = !show;
if (show = false) {
	instance_destroy(one);
} else {
	for (var i = 1; i > -1; --i) {
		button = instance_create_depth(50,100+(i*50),-1,buttonStats);
		button.species = aliveArray[i]
	}
	//one = instance_create_depth(50,100,-1,buttonStats);
}