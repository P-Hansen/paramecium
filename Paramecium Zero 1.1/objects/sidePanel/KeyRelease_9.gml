/// @description Insert description here
// You can write your code in this editor
show = !show;
if (show = false) {
	for (var i = array_length(destroyArray)-1; i > -1; --i) {
		instance_destroy(destroyArray[i]);
	}
} else {
	j = 0;
	for (var i = array_length(aliveArray)-1; i > -1; --i) {
		if (instance_number(aliveArray[i])) {
			button = instance_create_depth(50,100+(j*50),-1,buttonStats);
			button.species = aliveArray[i];
			array_push(destroyArray, button);
			j++;
		}
	}
	
}