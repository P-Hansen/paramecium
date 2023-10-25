/// @description create segments

if (length > 0) {
	
	segment = instance_create_depth(x,y,1,wormSegment);
	segment.path = path;
	with (segment) {path_start(path, 1, path_action_continue, false);}
	segment.path_orientation = pathAngle;
	
	alarm[0] = timeOffset;
	length -= 1;
} else {
	instance_destroy(self);
}