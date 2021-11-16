/// @description Insert description here
// You can write your code in this editor

for (var i = array_length(allArray)-1; i > -1; --i) {
	if ((instance_number(allArray[i]) > 0) and !(array_contains(showingArray, allArray[i]))){
		array_push(showingArray, allArray[i]);
		button = instance_create_depth(0+offset,room_height-30,-1,buttonStats);
		offset += 200;
		button.species = allArray[i];
	}
}
for (var i = array_length(activeButtons)-1; i > -1; --i) {
	if (instance_number(activeButtons[i].species) == 0) {
		instance_destroy(activeButtons[i]);
		offset -= 200;
		for (var j = i-1; j > -1; --j){
			activeButtons[j].x -= 200;
		}
	}	
}