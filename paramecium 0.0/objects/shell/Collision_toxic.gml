/// @description Insert description here
// You can write your code in this editor

image_xscale = clamp(image_xscale - 0.25, 0, 1);
image_yscale = clamp(image_yscale - 0.25, 0, 1);
instance_destroy(other);