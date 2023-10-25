// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function array_index_of(array, item){
	for(i = array_length(array)-1; i > -1; --i) {
		if (array[i] == item) {
			return i;
		}
	}
	return false;
}