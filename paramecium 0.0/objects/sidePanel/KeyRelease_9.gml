/// @description Insert description here
// You can write your code in this editor
show = !show;
if (show = false) {
	instance_destroy(one);
} else {
	one = instance_create_depth(50,100,-1,buttonStats);
}