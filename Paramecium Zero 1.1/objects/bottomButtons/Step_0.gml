/// @description Insert description here
// You can write your code in this editor

for (var i = array_length(allArray)-1; i > -1; --i) {
	if ((instance_number(allArray[i]) > 0) and !(array_contains(showingArray, allArray[i]))){
		array_push(showingArray, allArray[i]);
		button = instance_create_depth(0+offset,room_height-30,-1,buttonStats);
		array_push(activeButtons, button);
		offset += 200;
		button.species = allArray[i];
	}
}
for (var i = 0; i < array_length(activeButtons); ++i) {
	if (instance_number(activeButtons[i].species) == 0) {
		//activeButtons[i].instance_destroy(self);
		array_delete(showingArray, array_index_of(showingArray, activeButtons[i].species), 1);
		array_delete(activeButtons, i, 1);
		offset -= 200;
		for (var j = i; j < array_length(activeButtons); ++j){
			activeButtons[j].x -= 200;
		}
	}	
}